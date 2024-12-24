#!/bin/bash
# Inicializa o cluster Swarm
sudo docker swarm init --advertise-addr=10.10.10.100

# Gera o token de entrada para workers e salva em um arquivo compartilhado
sudo docker swarm join-token worker -q > /vagrant/worker-token.txt
