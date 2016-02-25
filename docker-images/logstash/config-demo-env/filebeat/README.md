curl -L -O https://download.elastic.co/beats/filebeat/filebeat-1.0.0-x86_64.rpm
sudo rpm -vi filebeat-1.0.0-x86_64.rpm

Follow install instructions. Need to add template to elasticsearch
curl -XPUT 'http://localhost:9200/_template/filebeat?pretty' -d@/etc/filebeat/filebeat.template.json
