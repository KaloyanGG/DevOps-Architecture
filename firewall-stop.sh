#!/bin/bash

echo "Stopping firewall..."
sudo systemctl stop firewalld

echo "Disabling firewall..."
sudo systemctl disable firewalld