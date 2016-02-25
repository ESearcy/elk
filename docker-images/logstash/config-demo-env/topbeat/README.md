https://www.elastic.co/guide/en/beats/topbeat/current/topbeat-getting-started.html

#install
curl -L -O https://download.elastic.co/beats/topbeat/topbeat-1.0.1-x86_64.rpm
sudo rpm -vi topbeat-1.0.1-x86_64.rpm

curl -XPUT 'http://10.3.0.154:9200/_template/topbeat' -d@/etc/topbeat/topbeat.template.json