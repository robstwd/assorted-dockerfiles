FROM gliderlabs/alpine:latest

# build with $ docker build -t alpine-python-fritzconnection .

RUN apk update && \
    apk upgrade && \
    apk add python3
    
RUN  apk add py-pip

#RUN apk add py-lxml \
            #py-requests
    
#RUN pip install fritzconnection

# && rm -rf /var/cache/apk/*

# dr --rm -it alpine-python-fritzconnection /bin/sh
