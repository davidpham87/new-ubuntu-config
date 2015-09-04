# Sets a common firewall in your server
# And a simple fail2ban program.

echo "Setting ufw and fail2ban"

sudo ufw allow ssh
sudo ufw allow 4444/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 25/tcp
sudo ufw show added
sudo ufw enable

sudo apt-get -y --force-yes install fail2ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
