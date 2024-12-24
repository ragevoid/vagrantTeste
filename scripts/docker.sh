#!/bin/bash
# Instala Docker
curl -fsSL https://get.docker.com | sudo bash

# Instala Docker Compose
sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Adiciona o usuário vagrant ao grupo Docker
sudo usermod -aG docker vagrant
