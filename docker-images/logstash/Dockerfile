FROM logstash:2.1

RUN mkdir -p /opt/logstash-forwarder
RUN plugin install logstash-input-beats

EXPOSE 5043
EXPOSE 5044
