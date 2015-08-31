#!/bin/sh

testfile="http://mirror.internode.on.net/pub/test/10meg.test"

echo Downloading 10 MB testfile ....

output=$(curl $testfile -o 1meg.test -s -w '%{speed_download}')

echo $output 1000 | awk '{printf "%0.2f kilobytes per sec", $1 / $2 }'

