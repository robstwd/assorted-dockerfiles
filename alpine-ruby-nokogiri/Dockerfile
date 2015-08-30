FROM alpine:3.2 
MAINTAINER Rob Eastwood <rob.eastwood8@gmail.com>

# build with db -t alpine-ruby-nokogiri .
# run with $ docker run --rm -it --name="alp-ruby-nokogiri" alpine-ruby-nokogiri /bin/sh

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add \ 
       ruby \
       ruby-nokogiri && \
    rm -rf /var/cache/apk/*

COPY nokogiri-test.rb /apps/

WORKDIR /apps
