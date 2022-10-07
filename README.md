# Build

```bash
$ docker buildx build --output type=local,dest=./ .
$ ls
rootfs.tar.gz
```

# Usage

**FIRST CONTROL PLANE NODE**:

```bash
INSTALL_K3S_SKIP_DOWNLOAD=true /root/initialize/install-k3s.sh
```

# Requirements

```
lxc.apparmor.profile = "unconfined"
lxc.cgroup.devices.allow = "a"
lxc.cap.drop = ""
lxc.mount.auto = "proc:rw sys:rw cgroup:rw:force"
```
