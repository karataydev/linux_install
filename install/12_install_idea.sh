#!/bin/sh
curl -LO "https://download-cdn.jetbrains.com/idea/ideaIU-2024.2.4.tar.gz"
sudo tar -xzf ideaIU-*.tar.gz -C /opt
sudo rm ideaIU-2024.2.4.tar.gz
