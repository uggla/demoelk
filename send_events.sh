#!/bin/bash

# Send an event to logstash used to configure kibana/elasticsearch
docker run --log-driver=gelf --log-opt gelf-address=udp://${LOGSTASH_CONTAINER_IP}:12201 debian bash -c 'uname -a'
