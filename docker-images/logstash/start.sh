#!/bin/bash
docker stop logstash;
docker rm logstash;
docker run -d \
        -p 5044:5044 \
				--link elasticsearch:elasticsearch \
				-v /home/core/elk/logstash/config:/etc/logstash/conf.d \
				-v /home/core/elk/logstash/certs/logstash-forwarder.crt:/opt/logstash-forwarder/logstash-forwarder.crt \
				-v /home/core/elk/logstash/certs/logstash-forwarder.key:/opt/logstash-forwarder/logstash-forwarder.key \
				--name logstash \
				thinkbig/logstash:2.1 logstash -f /etc/logstash/conf.d/logstash.conf
