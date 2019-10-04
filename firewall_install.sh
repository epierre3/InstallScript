#  set the defaults used by UFW
ufw reset
ufw default deny incoming
ufw default allow outgoing

# Allowed protocols
ufw allow ssh
ufw allow http
ufw allow https

# Enable Firewall
ufw enable -y
