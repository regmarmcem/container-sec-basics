sudo cp jailbreak.c /mnt/alpine-rootfs/
cd /mnt/alpine-rootfs
sudo gcc -static /mnt/alpine-rootfs/jailbreak.c -o /mnt/alpine-rootfs/jailbreak

echo "jail break!!"
sudo unshare -imnpuC --fork chroot /mnt/alpine-rootfs/ /bin/sh -c "./jailbreak -c \"ls && pwd &&  cat /etc/lsb-release\""
