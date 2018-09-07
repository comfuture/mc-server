#!/bin/bash
docker run --rm -it -e MEMORY=4G -v /home/ubuntu/mcdata:/data \
-p25565:25565 -p25575:25575 --name mc itzg/minecraft-server

