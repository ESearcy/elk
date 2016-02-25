#!/bin/bash
docker stop elasticsearch;
docker rm elasticsearch;
docker run -d \
            -p 9200:9200 \
            --volumes-from elasticsearch-data \
            -e ES_HEAP_SIZE='2g'  \
            --name elasticsearch \
            thinkbig/elasticsearch:2.1.0