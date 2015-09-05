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
        python \
        build-base \
        git && \
    npm install -g grunt-cli && \
    rm -rf /var/cache/apk/*

RUN git clone https://github.com/hakimel/reveal.js.git && \
    cd reveal.js && \
    npm install

WORKDIR reveal.js

CMD [ "grunt", "serve" ]

EXPOSE 8000


# run interactively with   $ docker run --rm -it alpine-revealjs /bin/sh
# run the webserver with   $  docker run -d -p 8000:8000 alpine-revealjs




