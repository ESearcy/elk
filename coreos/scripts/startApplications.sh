#!/bin/bash


echo "Starting the elk stack applications"
cd ~/fleet-unit-files
echo "Starting elasticsarch"
fleetctl start elasticsearch.service
echo "Starting kibana"
fleetctl start kibana.service
echo "Starting logstash"
fleetctl start logstash.service
echo "Starting nginx"
fleetctl start nginx.service
echo "Starting cadvisor"
fleetctl start cadvisor.service