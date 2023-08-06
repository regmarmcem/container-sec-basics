getExecID() {    
    curl --unix-socket /var/run/docker.sock \
    -X POST \
    -H 'Content-Type: application/json' \
    --data-binary '{"AttachStdin": true,"AttachStdout": true,"AttachStderr": true,"Cmd": ["uname", "-a"],"DetachKeys": "ctrl-p,ctrl-q","Tty": true}' \
    http://v1.40/containers/$1/exec | jq -r '.Id'
}

execCommand() {    
    curl -s --unix-socket /var/run/docker.sock \
    -X POST \
    -H 'Content-Type: application/json' \
    --data-binary '{"Detach": false,"Tty": false}' \
    http://v1.40/exec/$1/start --output /tmp/output.txt
}

exec_id=$(getExecID $1)
execCommand $exec_id

