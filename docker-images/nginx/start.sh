#!/bin/bash
docker stop nginx;
docker rm nginx;
docker run -d \
        -p 80:80 \
        --link kibana:kibana \
 	      --link elasticsearch:elasticsearch \
	      -v /home/core/nginx/nginx.conf:/etc/nginx/nginx.conf \
	      -v /home/core/nginx/.htpasswd:/etc/nginx/.htpasswd \
 	      --name nginx \
   	    nginx:latest