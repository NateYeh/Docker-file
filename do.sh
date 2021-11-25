#!/bin/bash

set -x

if [ "$1" = "16" ]; then
    sudo docker run -d -p 16022:22 --name="nate16" -h "nate16" --restart=always --device=/dev/dri:/dev/dri -v /home/nate/sdb/work:/mnt/work nate16:20210526
elif [ "$1" = "18" ]; then
    sudo docker run -d -p 18022:22 --name="make18" -h "make18" --restart=always --device=/dev/dri:/dev/dri -v /home/nate/sdb/work:/mnt/work make18:20210520
elif [ "$1" = "20" ]; then
    sudo docker run -d -p 20022:22 --name="make20" -h "make20" --restart=always --device=/dev/dri:/dev/dri -v /home/nate/sdb/work:/mnt/work make20:20210520
elif [ "$1" = "office" ]; then
    sudo docker run -d -p 21022:22 --name="office" -h "office" --restart=always --device=/dev/dri:/dev/dri -v /home/nate/sdb/work:/mnt/work office:20210809
elif [ "$1" = "home" ]; then
    sudo docker run -d -p 5122:22 -p 5188:8888 --name="home" -h "home" --restart=always --cap-add=ALL --privileged --device=/dev/dri:/dev/dri -v /volume2/public/work:/home/nate/work -v /volume2/public/cache:/mnt/cache home:20211116
else
    echo "There are no match."
fi
