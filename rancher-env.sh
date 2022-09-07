#!/bin/bash

export HOME=/root

export ARCH=amd64
export IMAGE_REPO=rancher
export SYSTEM_CHART_DEFAULT_BRANCH=release-v2.6
export CHART_DEFAULT_BRANCH=release-v2.6
export PARTNER_CHART_DEFAULT_BRANCH=main
export RKE2_CHART_DEFAULT_BRANCH=main
export CATTLE_KDM_BRANCH=release-v2.6
export CATTLE_SYSTEM_CHART_DEFAULT_BRANCH=$SYSTEM_CHART_DEFAULT_BRANCH
export CATTLE_CHART_DEFAULT_BRANCH=$CHART_DEFAULT_BRANCH
export CATTLE_PARTNER_CHART_DEFAULT_BRANCH=$PARTNER_CHART_DEFAULT_BRANCH
export CATTLE_RKE2_CHART_DEFAULT_BRANCH=$RKE2_CHART_DEFAULT_BRANCH
export CATTLE_HELM_VERSION=v2.16.8-rancher2
export CATTLE_MACHINE_VERSION=v0.15.0-rancher93
export CATTLE_K3S_VERSION=v1.24.1+k3s1
export CATTLE_MACHINE_PROVISION_IMAGE=rancher/machine:${CATTLE_MACHINE_VERSION}
export CATTLE_ETCD_VERSION=v3.5.1
export LOGLEVEL_VERSION=v0.1.5
export TINI_VERSION=v0.18.0
export TELEMETRY_VERSION=v0.5.20
export DOCKER_MACHINE_LINODE_VERSION=v0.1.8
export LINODE_UI_DRIVER_VERSION=v0.4.0
export DOCKER_MACHINE_HARVESTER_VERSION=v0.5.0
export CATTLE_KDM_BRANCH=${CATTLE_KDM_BRANCH}
export HELM_VERSION=v3.9.0
export KUSTOMIZE_VERSION=v4.5.5
export CATTLE_WINS_AGENT_VERSION=v0.4.7
export CATTLE_WINS_AGENT_INSTALL_SCRIPT=https://raw.githubusercontent.com/rancher/wins/${CATTLE_WINS_AGENT_VERSION}/install.ps1
export CATTLE_WINS_AGENT_UNINSTALL_SCRIPT=https://raw.githubusercontent.com/rancher/wins/${CATTLE_WINS_AGENT_VERSION}/uninstall.ps1
export CATTLE_WINS_AGENT_UPGRADE_IMAGE=rancher/wins:${CATTLE_WINS_AGENT_VERSION}
export CATTLE_CSI_PROXY_AGENT_VERSION=v1.1.1
export CATTLE_SYSTEM_AGENT_VERSION=v0.2.10
export CATTLE_SYSTEM_AGENT_INSTALL_SCRIPT=https://raw.githubusercontent.com/rancher/system-agent/${CATTLE_SYSTEM_AGENT_VERSION}/install.sh
export CATTLE_SYSTEM_AGENT_UNINSTALL_SCRIPT=https://raw.githubusercontent.com/rancher/system-agent/${CATTLE_SYSTEM_AGENT_VERSION}/system-agent-uninstall.sh
export CATTLE_SYSTEM_AGENT_UPGRADE_IMAGE=rancher/system-agent:${CATTLE_SYSTEM_AGENT_VERSION}-suc
export CATTLE_SYSTEM_UPGRADE_CONTROLLER_CHART_VERSION=100.0.3+up0.3.3
export CATTLE_FLEET_MIN_VERSION=100.0.5+up0.3.11
export CATTLE_RANCHER_WEBHOOK_MIN_VERSION=1.0.5+up0.2.6
export CATTLE_CSP_ADAPTER_MIN_VERSION=1.0.0
export HELM_URL_V2_amd64=https://github.com/rancher/helm/releases/download/${CATTLE_HELM_VERSION}/rancher-helm
export HELM_URL_V2_arm64=https://github.com/rancher/helm/releases/download/${CATTLE_HELM_VERSION}/rancher-helm-arm64
export HELM_URL_V2_s390x=https://github.com/rancher/helm/releases/download/${CATTLE_HELM_VERSION}/rancher-helm-s390x
export HELM_URL_V2=HELM_URL_V2_${ARCH}
export HELM_URL_V3=https://get.helm.sh/helm-${HELM_VERSION}-linux-${ARCH}.tar.gz
export TILLER_URL_amd64=https://github.com/rancher/helm/releases/download/${CATTLE_HELM_VERSION}/rancher-tiller
export TILLER_URL_arm64=https://github.com/rancher/helm/releases/download/${CATTLE_HELM_VERSION}/rancher-tiller-arm64
export TILLER_URL_s390x=https://github.com/rancher/helm/releases/download/${CATTLE_HELM_VERSION}/rancher-tiller-s390x
export TILLER_URL=TILLER_URL_${ARCH}
export ETCD_URL=https://github.com/etcd-io/etcd/releases/download/${CATTLE_ETCD_VERSION}/etcd-${CATTLE_ETCD_VERSION}-linux-${ARCH}.tar.gz
export KUSTOMIZE_URL=https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize/${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_${ARCH}.tar.gz
export CATTLE_UI_VERSION=2.6.7
export CATTLE_DASHBOARD_UI_VERSION=v2.6.8
export CATTLE_CLI_VERSION=v2.6.7
export CATTLE_API_UI_VERSION=1.1.9
export AUDIT_LOG_PATH=/var/log/auditlog/rancher-api-audit.log
export AUDIT_LOG_MAXAGE=10
export AUDIT_LOG_MAXBACKUP=10
export AUDIT_LOG_MAXSIZE=100
export AUDIT_LEVEL=0
export CATTLE_CLI_URL_DARWIN=https://releases.rancher.com/cli2/${CATTLE_CLI_VERSION}/rancher-darwin-amd64-${CATTLE_CLI_VERSION}.tar.gz
export CATTLE_CLI_URL_LINUX=https://releases.rancher.com/cli2/${CATTLE_CLI_VERSION}/rancher-linux-amd64-${CATTLE_CLI_VERSION}.tar.gz
export CATTLE_CLI_URL_WINDOWS=https://releases.rancher.com/cli2/${CATTLE_CLI_VERSION}/rancher-windows-386-${CATTLE_CLI_VERSION}.zip
export VERSION=dev
export CATTLE_SERVER_VERSION=${VERSION}
export CATTLE_AGENT_IMAGE=${IMAGE_REPO}/rancher-agent:${VERSION}
export CATTLE_SERVER_IMAGE=${IMAGE_REPO}/rancher
export ETCDCTL_API=3
export SSL_CERT_DIR=/etc/rancher/ssl

