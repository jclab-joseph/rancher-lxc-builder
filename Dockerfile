ARG RANCHER_VERSION=v2.6.8
FROM rancher/rancher:${RANCHER_VERSION} as image_builder

RUN zypper -n install systemd systemd-sysvinit wicked-service

RUN cat /usr/bin/entrypoint.sh | sed -e 's/exec tini -- /exec /g' > /usr/bin/rancher-run.sh && \
    chmod +x /usr/bin/rancher-run.sh

RUN systemctl enable network.service && \
    systemctl enable systemd-journald.service && \
    systemctl enable rancher.service

# CLEAN UP
RUN zypper -n clean -a && \
    rm -rf /tmp/* /var/tmp/* /usr/share/doc/packages/*


FROM alpine:3.16 as packager

RUN apk add \
    bash tar gzip && \
    mkdir -p /rootfs

COPY --from=image_builder ["/", "/rootfs"]
RUN cd /rootfs && tar -czf ../rootfs.tar.gz .

FROM scratch
ARG RANCHER_VERSION=v2.6.8
COPY --from=packager ["/rootfs.tar.gz", "/rancher-${RANCHER_VERSION}-rootfs.tar.gz"]

