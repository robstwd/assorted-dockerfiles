FROM openjdk:8-jdk-alpine

WORKDIR /usr/src/ig-publisher

RUN wget -q http://build.fhir.org/org.hl7.fhir.igpublisher.jar -O publisher.jar

RUN mkdir -p /usr/src/input

RUN apk update && \
    apk upgrade && \
    apk add \
       ruby \
       ruby-dev \
       libffi-dev \
       build-base \
       python \
       py2-pip && \
    rm -rf /var/cache/apk/*
    
RUN gem install --no-rdoc --no-ri jekyll json

RUN pip install --upgrade pip && \
    python -m pip install Pygments
	

# =========================================================================	
	
# build with:
# $ docker build -t java-ig-pub .

# run with 
# $ docker run -it --rm -v /media/sf_vb_share/dh-Participants-ig-copy:/usr/src/input --name my-running-app java-ig-pub 

# inside container run
# java -jar /usr/src/ig-publisher/publisher.jar -ig /usr/src/input/dh-Participants-ig.json

# error installing jekyll fixed via installing libffi-dev via apk
# https://github.com/ffi/ffi/issues/485

# jekyll location:
# gem which jekyll
# /usr/lib/ruby/gems/2.3.0/gems/jekyll-3.4.3/lib/jekyll.rb

# RUN echo "highlighter: pygments" >> /usr/lib/ruby/gems/2.3.0/gems/jekyll-3.4.3/lib/site_template/_config.yml