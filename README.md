# ppc64-kernel-builder

## Kernel compilation

### Big endian

```
$ docker run -it --rm -v $PWD:$PWD -w $PWD -u $(id -u) 3mdeb/ppc64-kernel-builder bash
(docker)$ export ARCH=powerpc
(docker)$ export CROSS_COMPILE=powerpc64-linux-gnu-
(docker)$ make powernv_defconfig
(docker)$ make menuconfig # select big endian in Endianess selection
(docker)$ make -j $(nproc)
```

### Little endian

```
$ docker run -it --rm -v $PWD:$PWD -w $PWD -u $(id -u) 3mdeb/ppc64-kernel-builder bash
(docker)$ export ARCH=powerpc
(docker)$ export CROSS_COMPILE=powerpc64le-linux-gnu-
(docker)$ make powernv_defconfig
(docker)$ make -j $(nproc)
```
