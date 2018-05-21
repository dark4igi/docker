#!/bin/bash

a=$(apt-cache madison docker-ce  | awk '{print $3}' | sort | tail -n1)
echo $a
apt-get install docker-ce=$a

docker run -it ubuntu bash

