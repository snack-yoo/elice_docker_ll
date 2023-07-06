FROM ubuntu
VOLUME /my-volume
#VOLUME /my-volume /my-other-volume
# docker run -it --rm --privileged --pid=host justincormack/nsenter1