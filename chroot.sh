echo "set up rootfs"
sudo mkdir -p /mnt/alpine-rootfs && cd /mnt/alpine-rootfs
sudo wget https://dl-cdn.alpinelinux.org/alpine/v3.15/releases/x86_64/alpine-minirootfs-3.15.1-x86_64.tar.gz
sudo tar xzf alpine-minirootfs-3.15.1-x86_64.tar.gz
sudo rm alpine-minirootfs-3.15.1-x86_64.tar.gz
ls

echo "\ncombine chroot with unshare"
sudo unshare -imnpuC --fork chroot /mnt/alpine-rootfs/ /bin/sh -c "mount -t proc proc /proc && ps aux && ls / && cat /etc/alpine-release"


