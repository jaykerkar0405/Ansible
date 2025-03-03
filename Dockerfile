FROM ubuntu:latest

# Install SSH, Apache, and utilities
RUN apt update && apt install -y openssh-server apache2 sudo

# Create SSH directory for root and set correct permissions
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh

# Copy SSH public key (from build context) to authorized_keys
COPY ansible_key.pub /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

# Enable SSH & Apache services
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
    echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config

# Expose SSH & Apache ports
EXPOSE 22 80

# Start SSH & Apache when container launches
CMD service ssh start && service apache2 start && tail -f /dev/null
