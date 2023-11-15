#!/bin/bash

docker build -t im-nginx-lb -f Dockerfile .
mkdir -p shared1 shared2
echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h1>" > shared2/index.html
 
docker run --rm --name nginx1 \
	-p 81:80 \
	--mount type=bind,source="$(pwd)"/shared1,target=/usr/share/nginx/html \
	-d nginx:latest
	
docker run --rm --name nginx2 \
	-p 82:80 \
	--mount type=bind,source="$(pwd)"/shared2,target=/usr/share/nginx/html \
	-d nginx:latest

docker run --rm --name nginx-lb \
	-p 83:80 \
	-d im-nginx-lb

