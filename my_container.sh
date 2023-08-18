#!/bin/bash

export NEW_ROOT=/mnt/alpine-rootfs
sudo mkdir /mnt/alpine-rootfs/.put_old/ -p
sudo unshare -imnpuC --fork sh -c \
"mount --bind $NEW_ROOT $NEW_ROOT && \
mount -t proc proc $NEW_ROOT/proc && \
pivot_root $NEW_ROOT $NEW_ROOT/.put_old && \
umount -l /.put_old && \
cd / && \
exec /bin/sh"
