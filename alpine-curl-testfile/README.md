# alpine-curl-testfile
A simple docker image running on [alpine](http://www.alpinelinux.org/) with the addition of a single app [curl](http://curl.haxx.se/).

#### Purpose
In order to graph the download speeds attained via my ISP, I set this up to run on an hourly basis via a systemd timer and upload the result to [thingspeak](http://api.thingspeak.com/channels/10117/charts/4?width=850&height=560&yaxismin=0&results=100&dynamic=true&type=spline&yaxis=KB%2Fsec&title=Received%20Throughput%20-%20kilobytes%20per%20sec).

#### Building image
Image size: 12.3MB

This image was built from the dockerfile with:
```
docker build -t alpine-curl-testfile .
```

#### Running container
The script `download_testfile.sh` (see below) runs automatically when the container is started.
Following which, the container stops. Issue:
```
docker run --rm alpine-curl-testfile
```
The output should be thus:
```
Downloading 10 MB testfile ....
86.25 kilobytes per sec
```
##### Download script
```sh
#!/bin/sh

# purpose
# downloads a test file from Internode (my ISP) via curl
# outputs the average download speed in kilobytes per second
# Internode has vaying sizes of test files, up to 1G or more, 
# but the 10MB seems a reasonable choice

testfile="http://mirror.internode.on.net/pub/test/10meg.test"

echo Downloading 10 MB testfile ....

# use curl to download the file
# '-o 10meg.test' = outputs to a file on the local filesystem
# '-s' = silently, so no output to STDOUT
#  '-w' '%{speed_download}' = write out the result with just the download speed
# typical output then is "86254.000" as bytes
output=$(curl $testfile -o 10meg.test -s -w '%{speed_download}')

# extract kilobytes using awk, rounding to 2 decimal places via printf
# in the above example, the output becomes "86.25 kilobytes per sec"
echo $output 1000 | awk '{printf "%0.2f kilobytes per sec", $1 / $2 }'
```
