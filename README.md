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

If cgroupv2-only system,

```
lxc.mount.auto = proc:mixed sys:mixed cgroup:rw:force
```
