#!/bin/bash
nc 192.168.99.100 5000 < /var/log/pipeline-application/pipeline-application.log
sleep 5
curl '192.168.99.100:9200/_search?q=loomRequest&pretty'
