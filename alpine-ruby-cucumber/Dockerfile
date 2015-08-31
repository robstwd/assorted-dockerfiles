FROM alpine:3.2 
MAINTAINER Rob Eastwood <rob.eastwood8@gmail.com>

# build with db -t alpine-ruby-cucumber .
# run with $ docker run --rm -it --name="alpine-ruby-cucumber" alpine-ruby-cucumber /bin/sh

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add \
       ruby \
       ruby-dev \
       build-base && \
    rm -rf /var/cache/apk/*

# install required gems; without documentation
RUN gem install --no-rdoc --no-ri cucumber rspec 

COPY features /apps/features

WORKDIR /apps
