FROM alpine:3.2 
MAINTAINER Rob Eastwood <rob.eastwood8@gmail.com>

# build with $ docker build -t alpine-curl-testfile .
# run with $ docker run --rm alpine-curl-testfile 

# Update and install curl
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add curl && \
    rm -rf /var/cache/apk/*

WORKDIR /apps

COPY download_testfile.sh /apps/download_testfile.sh 

CMD [ "./download_testfile.sh" ]
