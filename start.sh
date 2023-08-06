
curl --unix-socket /var/run/docker.sock \
-X POST \
-H 'Content-Type: application/json' \
http://v1.40/containers/$1/start