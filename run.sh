#!/bin/bash

echo "[+] Building Docker Image..."
docker build -t ssh_ubuntu .

echo "[+] Removing old containers (if any)..."
docker rm -f vm1 vm2 2>/dev/null

echo "[+] Starting new VMs..."
docker run -d --name vm1 -p 5050:22 -p 8081:80 ssh_ubuntu
docker run -d --name vm2 -p 5051:22 -p 8082:80 ssh_ubuntu

echo "[+] Waiting for SSH to be ready..."
sleep 5

echo "[+] Running Ansible Playbook..."
ansible-playbook -i inventory.ini playbook.yml

echo "[+] Setup Complete!"
echo "Access your web servers at:"
echo "➡ VM1: https://redesigned-goldfish-pjwvqpwp4vp7hrrx7-8081.app.github.dev"
echo "➡ VM2: https://redesigned-goldfish-pjwvqpwp4vp7hrrx7-8082.app.github.dev/"
