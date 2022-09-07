# build

```bash
$ docker buildx build --output type=local,dest=./ .
$ ls
rootfs.tar.gz
```

## Requirements

If cgroupv2-only system,

```
lxc.mount.auto = proc:mixed sys:mixed cgroup:rw:force
```
