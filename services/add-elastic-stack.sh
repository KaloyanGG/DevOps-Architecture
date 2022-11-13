#!/bin/bash

echo "Downloading the ElasticSearch package..."
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.5.0-x86_64.rpm
echo "Installing it..."
sudo rpm -Uvh elasticsearch-*.rpm

echo "Downloading the Logstash package..."
wget https://artifacts.elastic.co/downloads/logstash/logstash-8.5.0-x86_64.rpm
echo "Installing it..."
sudo rpm -Uvh logstash-*.rpm


echo "Downloading the Kibana package..."
wget https://artifacts.elastic.co/downloads/kibana/kibana-8.5.0-x86_64.rpm
echo "Installing it..."
sudo rpm -Uvh kibana-*.rpm


#echo "Policies..."
#sudo update-crypto-policies --set LEGACY
#echo "Importing..."
#sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
#echo "Copying..."
#sudo cp /vagrant/elasticsearch.repo /etc/yum.repos.d/
#echo "Installing..."
#sudo dnf install --enablerepo=elasticsearch elasticsearch logstash kibana


