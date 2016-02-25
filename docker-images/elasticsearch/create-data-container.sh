#!/bin/bash
docker create -v /data --name elasticsearch-data thinkbig/elasticsearch:2.1.0 /bin/true
