docker run -d --rm -it --name sleep-container ubuntu:latest sleep 5
getpcaps $(docker inspect --format {{.State.Pid}} sleep-container)