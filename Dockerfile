FROM ubuntu:latest

# Install SSH server and sudo
RUN apt-get update && apt-get install -y openssh-server sudo

# Create SSH folder
RUN mkdir /var/run/sshd

# Add ansible user with password
RUN useradd -m ansible && echo "ansible:ansible" | chpasswd && adduser ansible sudo

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]
