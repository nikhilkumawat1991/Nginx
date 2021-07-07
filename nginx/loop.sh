#!/bin/sh

cd /usr/sbin/
./nginx &

while true
do
    echo "sleeping..."
    sleep 10
done
