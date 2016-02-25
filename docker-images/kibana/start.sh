#!/bin/bash
docker stop kibana;
docker rm kibana;
docker run -d --name kibana -p 5601:5601 --link elasticsearch:elasticsearch thinkbig/kibana:4.3.0