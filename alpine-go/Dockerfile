FROM alpine:3.3

RUN apk add --no-cache go

WORKDIR /apps

# copy the small test go script
COPY hello.go /apps/

# compile the test go script
RUN go build hello.go

# run the compiled go app
CMD [ "./hello" ]

# ==============================

# build with db -t alpine-go .
# run to excecute the test app with:
#    docker run --rm alpine-go

# run interactively with:
#    docker run --rm -it alpine-go /bin/sh
# then issue `hello` to run the app
