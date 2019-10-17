#!/bin/bash

IMAGE_NAME=teamsprint/jdk:8
CONTAINER_NAME=jdk

# This booting pattern is for consistency among the images of teamsprint.
# docker-mysql has to be run in this way. (Security issue)
sudo docker run -d -it --name $CONTAINER_NAME $IMAGE_NAME /usr/sbin/init
sudo docker exec -it $CONTAINER_NAME /bin/bash

