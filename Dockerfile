FROM debian:bullseye as image_builder

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    systemd systemd-sysv iproute2 isc-dhcp-client ifupdown \
    tar procps passwd gzip util-linux \
    ca-certificates \
    curl lsb-release \
    iptables ulogd2

# ===== INTSALL K3S =====
ARG K3S_VERSION="v1.23.10+k3s1"
RUN export K3S_VERSION_URL="$(echo $K3S_VERSION | sed 's/+/%2b/g')" && \
    mkdir -p /var/lib/rancher/k3s/agent/images/ && \
    curl -sL https://github.com/k3s-io/k3s/releases/download/${K3S_VERSION_URL}/k3s -o /usr/local/bin/k3s && \
    curl -sL https://github.com/k3s-io/k3s/releases/download/${K3S_VERSION_URL}/k3s-airgap-images-amd64.tar.gz -o /tmp/k3s-airgap-images-amd64.tar.gz && \
    gzip -dc /tmp/k3s-airgap-images-amd64.tar.gz > /var/lib/rancher/k3s/agent/images/k3s-airgap-images-amd64.tar && \
    chmod +x /usr/local/bin/k3s

# ===== INSTALL HELM =====
RUN curl -fsSL -o /tmp/get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && \
    bash /tmp/get_helm.sh

# ===== COPY FILES =====

ADD ["files", "/tmp/files"]

RUN cat /lib/systemd/system/rc-local.service | grep -i 'install' || \
    printf "\
\n\
[Install]\n\
WantedBy=multi-user.target\n" | tee -a /lib/systemd/system/rc-local.service

RUN cp -rf /tmp/files/* / && \
    chmod +x /etc/rc.local && \
    sed -E 's|^ExecStart=/lib/systemd/systemd-networkd-wait-online$|ExecStart=/lib/systemd/systemd-networkd-wait-online --timeout=5|g' /lib/systemd/system/systemd-networkd-wait-online.service && \
    systemctl enable networking.service && \
    systemctl enable systemd-resolved.service && \
    systemctl enable systemd-journald.service && \
    systemctl enable rc-local.service

# ===== CLEAN UP =====

RUN apt-get clean && \
    rm -rf /tmp/*

# ===== PACKAGER =====

FROM alpine:3.16 as packager

RUN apk add \
    bash tar gzip && \
    mkdir -p /rootfs

COPY --from=image_builder ["/", "/rootfs"]
COPY ["images.tar", "/rootfs/var/lib/rancher/k3s/agent/images/"]
RUN cd /rootfs && tar -czf ../rootfs.tar.gz .

# ===== OUTPUT FILE =====
FROM scratch
COPY --from=packager ["/rootfs.tar.gz", "/rootfs.tar.gz"]

