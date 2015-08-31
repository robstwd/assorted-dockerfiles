#!/bin/sh

# usage
# downloads a test file from Internode (my ISP) via curl
# outputs the average download speed in kilobytes per second
# Internode has vaying sizes of test files, up to 1G or more, but the 10MB seems a reasonable choice

testfile="http://mirror.internode.on.net/pub/test/10meg.test"

echo Downloading 10 MB testfile ....

# use curl to download the file
# '-o 10meg.test' = outputs to a file on the local filesystem
# '-s' = silently, so no output to STDOUT
#  '-w' '%{speed_download}' = write out the result with just the download speed
# typical output then is "86254.000" as bytes
output=$(curl $testfile -o 10meg.test -s -w '%{speed_download}')

# extract kilobytes using awk, rounding to 2 decimal places via printf
echo $output 1000 | awk '{printf "%0.2f kilobytes per sec", $1 / $2 }'
