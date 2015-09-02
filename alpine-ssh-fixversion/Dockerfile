FROM alpine:3.2 
MAINTAINER Rob Eastwood <rob.eastwood8@gmail.com>

# build with $ docker build -t alpine-ssh-fixversion .
# run with   $ docker run --rm -v $HOME/.ssh/known_hosts:/home/user/.ssh/known_hosts -v $HOME/.ssh/config:/home/user/.ssh/config -it alpine-ssh-fixversion /bin/sh

# Update and install the particular version of ssh
# Then remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add \
        openssh=6.8_p1-r4 && \
    rm -rf /var/cache/apk/*

# add normal user
RUN adduser user -D -s /bin/sh -g users \
    && mkdir -p /home/user/.ssh

USER user

WORKDIR /home/user