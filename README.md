# Ansible Docker Web Server Deployment

An automated deployment solution that spins up two Docker containers running Apache web servers, managed and configured using Ansible.

## 🚀 Features

- Automated deployment of two Docker containers
- Apache web server configuration using Ansible
- Dynamic system information display through CGI
- Secure SSH access with key-based authentication
- Real-time container statistics

## 🛠️ Prerequisites

- Docker
- Ansible
- Bash shell

## 📦 Project Structure

```
.
├── Dockerfile              # Docker image configuration
├── ansible_key            # SSH private key for Ansible
├── ansible_key.pub        # SSH public key
├── index1.html           # Web page for VM1
├── index2.html           # Web page for VM2
├── info.sh               # CGI script for system info
├── inventory.ini         # Ansible inventory file
├── playbook.yml         # Ansible playbook
└── run.sh               # Deployment script
```

## 🔧 Setup and Deployment

1. Clone the repository
2. Make sure Docker and Ansible are installed
3. Run the deployment script:
   ```bash
   chmod +x run.sh
   ./run.sh
   ```

## 🌐 Accessing the Web Servers

- VM1: http://localhost:8081
- VM2: http://localhost:8082

## 🔒 Security

- SSH access is secured using key-based authentication
- No password authentication allowed
- Custom SSH ports to avoid conflicts

## 🤝 Contributing

Feel free to open issues and pull requests!

## 📝 License

MIT License

## 👨‍💻 Author

Jay Kerkar
