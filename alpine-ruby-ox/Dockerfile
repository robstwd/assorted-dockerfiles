FROM alpine:3.2 
MAINTAINER Rob Eastwood <rob.eastwood8@gmail.com>


# build with db -t alpine-ruby-ox .
# run with $ docker run --rm -it --name="alp-ruby-ox"  /bin/sh

#ENV BUILD_PACKAGES bash ruby-dev build-base
#ENV RUBY_PACKAGES ruby ruby-nokogiri

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add \ 
       ruby \
       ruby-dev \
       build-base && \
    rm -rf /var/cache/apk/*

# install required gem
RUN gem install ox

# remove unwanted packages
RUN apk del \
    ruby-dev \
    build-base \
    ruby-doc \
    ruby-rdoc 
