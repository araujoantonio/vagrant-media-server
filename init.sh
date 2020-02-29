# Update Packages
apt-get update
# Upgrade Packages
apt-get upgrade

# Basic Linux Stuff
apt-get install -y git
apt-get install snapd
apt-get install curl

# Nextcloud
sudo snap install nextcloud

# Installing Samba
sudo apt-get install samba -y
sudo cp /home/vagrant/smb.conf /etc/samba/smb.conf
sudo service smbd restart
sudo ufw allow samba

# Installing Plex
sudo snap install plexmediaserver