#!/bin/sh
curl -LO "https://go.dev/dl/go1.22.4.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.4.linux-amd64.tar.gz 
sudo rm go1.22.4.linux-amd64.tar.gz
