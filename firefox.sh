docker run \
	--rm \
	--net host \
	-d \
	-e DISPLAY=unix$DISPLAY \
	-e PULSE_SERVER=$PULSE_SERVER \
	-e PULSE_COOKIE=/home/ubuntu/.config/pulse/cookie \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /home/${USER}/.config/pulse/cookie:/home/ubuntu/.config/pulse/cookie \
        -v ${HOME}/.cache:/home/ubuntu/.cache \
        -v ${HOME}/.mozilla:/home/ubuntu/.mozilla \
	-v /etc/localtime:/etc/localtime:ro \
	-v /dev/shm:/dev/shm \
	--device /dev/dri \
	firefox $*
