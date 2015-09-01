# alpine-curl-testfile
A simple docker image running on [alpine](http://www.alpinelinux.org/) with the addition of a single app [curl](http://curl.haxx.se/).

#### Purpose
In order to graph the download speeds attained via my ISP, I set this up to run on an hourly basis via systemd timer and upload the result to [thingspeak](http://api.thingspeak.com/channels/10117/charts/4?width=450&height=260&results=100&dynamic=true&type=spline&yaxis=KB%2Fsec&title=Received%20Throughput%20-%20kilobytes%20per%20sec)

#### Building image
Image size: 12.3MB

This image was built from the dockerfile with:
```
docker build -t alpine-curl-testfile .
```

#### Running container
Start the a container so that the script runs, after which the container stops:
```
docker run --rm alpine-curl-testfile
```
The output should be thus:
```
Downloading 10 MB testfile ....
86.25 kilobytes per sec
```
