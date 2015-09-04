FROM alpine:3.2 
MAINTAINER Rob Eastwood <rob.eastwood8@gmail.com>

# work in progress 

# build with $ docker build -t alpine-revealjs .

# Update and install the required apps
# Then remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add \
        nodejs \
        git && \
    npm install -g grunt-cli && \
    rm -rf /var/cache/apk/*


# run with   $ docker run --rm 

# sources:
# https://hub.docker.com/r/danidemi/docker-reveal.js/~/dockerfile/
# https://github.com/hakimel/reveal.js#installation
