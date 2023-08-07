echo "unshare options"
echo "-i: IPC -m: Mount -n: Network -p: PID -u: UTS -C: Cgroup"
echo "\nunshare UTS and change hostname to example"
sudo unshare -imnpuC --fork /bin/bash -c "hostname example && hostname"
echo "\nhost's host is"
hostname

echo "\nSee namespace is separated"
sudo lsns

echo "\nhost procfs"
sudo unshare -imnpuC --fork /bin/bash -c "ls /proc"

echo "\nmount new procfs"
sudo unshare -imnpuC --mount-proc --fork /bin/bash -c "ls /proc"