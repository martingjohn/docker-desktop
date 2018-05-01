# rdesktop

I run with

    docker run -it \
	--rm \
	--net host \
	-e DISPLAY=unix$DISPLAY \
	-e PULSE_SERVER=$PULSE_SERVER \
	-e PULSE_COOKIE=/home/ubuntu/.config/pulse/cookie \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /home/${USER}/.config/pulse/cookie:/home/ubuntu/.config/pulse/cookie \
	-v /dev/shm:/dev/shm \
	-v /etc/localtime:/etc/localtime:ro \
	--device /dev/dri \
	rdesktop $*

