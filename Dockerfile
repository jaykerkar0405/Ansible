FROM ubuntu:latest

# Install required packages (Apache, SSH, utilities)
RUN apt update && apt install -y openssh-server apache2 sudo lsb-release

# Enable Apache CGI module
RUN a2enmod cgi

# Create CGI script directory and set permissions
RUN mkdir -p /usr/lib/cgi-bin && chmod +x /usr/lib/cgi-bin

# Add the CGI script inside the container
COPY info.sh /usr/lib/cgi-bin/info.sh
RUN chmod +x /usr/lib/cgi-bin/info.sh

# Setup SSH keys
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh
COPY ansible_key.pub /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

# Ensure Apache and SSH services start properly
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
    echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config && \
    echo 'PubkeyAuthentication yes' >> /etc/ssh/sshd_config

# Expose SSH & Apache ports
EXPOSE 22 80

# Start services when the container launches
CMD service ssh start && service apache2 start && tail -f /dev/null
