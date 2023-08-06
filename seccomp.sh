echo "mkdir /tmp/test && ls -ld /tmp/test"
docker run --rm -it ubuntu:20.04 sh -c "mkdir /tmp/test && ls -d /tmp/test"

echo "\nSet seccomp to throw Operation not permitted"
docker run --rm -it --security-opt seccomp=seccomp.json ubuntu:20.04 sh -c "mkdir /tmp/test"