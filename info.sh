#!/bin/bash
echo "Content-type: application/json"
echo ""

HOSTNAME=$(hostname)
IP=$(hostname -I | awk '{print $1}')
OS=$(lsb_release -ds)
UPTIME=$(uptime -p)

cat <<EOF
{
    "hostname": "$HOSTNAME",
    "ip": "$IP",
    "os": "$OS",
    "uptime": "$UPTIME"
}
EOF
