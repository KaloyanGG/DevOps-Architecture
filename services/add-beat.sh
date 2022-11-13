#!/bin/bash
echo "Adding Metricbeat..."
wget https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-8.5.0-x86_64.rpm
sudo rpm -Uvh metricbeat-8.5.0-x86_64.rpm