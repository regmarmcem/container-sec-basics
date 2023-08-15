sudo cp jailbreak.c /mnt/alpine-rootfs/
sudo cp jailbreak_fail.c /mnt/alpine-rootfs/
cd /mnt/alpine-rootfs
sudo gcc -static /mnt/alpine-rootfs/jailbreak.c -o /mnt/alpine-rootfs/jailbreak
sudo gcc -static /mnt/alpine-rootfs/jailbreak_fail.c -o /mnt/alpine-rootfs/jailbreak_fail

echo "jail break!!"
sudo unshare -imnpuC --fork chroot /mnt/alpine-rootfs/ /bin/sh -c "./jailbreak -c \"ls && pwd &&  cat /etc/lsb-release\""

echo "jail break will fail!!"
sudo unshare -imnpuC --fork chroot /mnt/alpine-rootfs/ /bin/sh -c "./jailbreak_fail -c \"ls && pwd &&  cat /etc/lsb-release\""