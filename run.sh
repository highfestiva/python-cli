#!/bin/bash

docker build -t pycon . > /dev/null
docker run -it --rm -v "$(cd /home/$SUDO_USER;pwd)":/home/host --name pycon pycon
