FROM alpine

MAINTAINER Sudharsan Rangarajan <sudharsan.rangarajan@gmail.com> 

ENV ARCH=amd64

RUN apk update \
    && apk add \
        openssl \
        ca-certificates \
        rclone \
        fuse \
    && cd /tmp \
    && addgroup rclone \
    && adduser -h /config -s /bin/ash -G rclone -D rclone

USER rclone

VOLUME ["/config"]

#CMD ["/bin/sh", "-c", "sleep infinity"]
#CMD ["/bin/sh", "-c", "tail", "-f", "/dev/null"]
CMD ["/bin/sh"] 
ENTRYPOINT ["tail", "-f", "/dev/null"]
