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
    git clone --depth 1 https://github.com/hakimel/reveal.js.git && \
    cd reveal.js && \
    npm install && \
    apk del \
        build-base \
        git && \
    rm -rf /var/cache/apk/*

# set up local slide show
#RUN mkdir /slides

#RUN rm /reveal.js/index.html 

#COPY index.html /reveal.js/index.html


#&& \
#    ln -s /slides/index.html /reveal.js/index.html

#WORKDIR reveal.js

CMD [ "grunt", "serve" ]

EXPOSE 8000

# ======================================================================
# run interactively with   $ docker run --rm -it alpine-revealjs /bin/sh
# run the webserver with   $ docker run -d -p 8000:8000 alpine-revealjs
# run the webserver with local slides 
# $ docker run -d -v $(pwd):/slides/ -p 8000:8000 alpine-revealjs
# $ docker run -d -v /home/rob/pc_stuff/docker/assorted-dockerfiles/alpine-revealjs:/slides/ -p 8000:8000 alpine-revealjs
# $ docker run --rm -v "$(pwd)/index.html:/revealjs/index.html" -p 8000:8000 alpine-revealjs




