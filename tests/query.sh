#!/bin/bash

curl '192.168.99.100:9200/_search?q=loomRequest&pretty' | grep -C 3 "hits"
