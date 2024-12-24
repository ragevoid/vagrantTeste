#!/bin/bash
# Aguarda o token ser gerado pelo nó master
while [ ! -f /vagrant/worker-token.txt ]; do
  echo "Aguardando o token do master..."
  sleep 5
done

# Lê o token salvo no master
TOKEN=$(cat /vagrant/worker-token.txt)

# Junta o nó ao cluster usando o token
sudo docker swarm join --token $TOKEN 10.10.10.100:2377
