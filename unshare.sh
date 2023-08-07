echo "-i: IPC"
echo "-m: Mount"
echo "-n: Network"
echo "-p: PID"
echo "-u: UTS"
echo "-C: Cgroup"
echo "unshare UTS and change hostname to example"
sudo unshare -imnpuC --fork /bin/bash -c "hostname example && hostname"
echo "\nhost's host is"
hostname
sudo lsns




