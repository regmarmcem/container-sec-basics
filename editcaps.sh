echo "CAP_SYS_ADMINを追加"
docker run -d --cap-add CAP_SYS_ADMIN --rm -it --name sleep-add ubuntu:latest sleep 5
getpcaps $(docker inspect --format {{.State.Pid}} sleep-add)

echo "\nCAP_NET_RAWを削除"
docker run -d --cap-drop CAP_NET_RAW --rm -it --name sleep-drop ubuntu:latest sleep 5
getpcaps $(docker inspect --format {{.State.Pid}} sleep-drop) 
