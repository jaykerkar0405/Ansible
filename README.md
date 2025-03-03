# 🚀 Ansible Web Server Setup

## 📌 Overview
This Ansible playbook automates the setup of an **Nginx web server** on multiple virtual machines (VMs). It:

✅ Installs **Nginx**
✅ Deploys a simple **HTML website**
✅ Starts and enables **Nginx service**
✅ Configures the firewall to allow HTTP traffic

---

## 🛠️ Setup Instructions

### 🔹 1️⃣ Install Ansible
Since `apt` didn’t work, use **pip** to install Ansible:
```bash
pip3 install --user ansible
```
Ensure `~/.local/bin` is in your PATH:
```bash
echo 'export PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
```

Verify installation:
```bash
ansible --version
```

---

### 🔹 2️⃣ Project Structure
```
/workspaces/Ansible/
├── inventory.ini   # Defines target servers
├── playbook.yml    # Main Ansible Playbook
├── files/
│   └── index.html  # Webpage to deploy
```

---

### 🔹 3️⃣ Define Inventory (`inventory.ini`)
Edit the `inventory.ini` file to specify your VMs:
```ini
[webservers]
vm1 ansible_host=<ip_of_vm1> ansible_user=ansible ansible_password=ansible
vm2 ansible_host=<ip_of_vm2> ansible_user=ansible ansible_password=ansible
```
Replace `<ip_of_vm1>` and `<ip_of_vm2>` with the actual IPs.

---

### 🔹 4️⃣ Create `files/index.html`
```html
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My Ansible Website!</title>
</head>
<body>
    <h1>Deployed using Ansible 🚀</h1>
    <p>This page was automatically deployed to the server using an Ansible Playbook!</p>
</body>
</html>
```

---

### 🔹 5️⃣ Create `playbook.yml`
```yaml
- name: Comprehensive Web Server Setup
  hosts: webservers
  become: true

  tasks:
    - name: Install Nginx
      apt:
        name: nginx
        state: present

    - name: Upload Website File
      copy:
        src: files/index.html
        dest: /var/www/html/index.html
      notify: Restart Nginx

    - name: Start and Enable Nginx
      service:
        name: nginx
        state: started
        enabled: true

    - name: Allow HTTP Traffic (optional if firewall exists)
      ansible.builtin.iptables:
        chain: INPUT
        protocol: tcp
        destination_port: 80
        jump: ACCEPT

  handlers:
    - name: Restart Nginx
      service:
        name: nginx
        state: restarted
```

---

### 🔹 6️⃣ Run the Playbook
```bash
ansible-playbook -i inventory.ini playbook.yml
```

---

### 🔹 7️⃣ Verify Deployment
Open a browser and visit:
```
http://<ip_of_vm1>
http://<ip_of_vm2>
```
You should see the deployed webpage! 🎉

---
