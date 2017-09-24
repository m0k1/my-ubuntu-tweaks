#Go to sudo and update repo
sudo su
#Replace .rs in sources.list (change rs corresponding to your state
sed -i 's/rs.//g' /etc/apt/sources.list
apt update

#Basic utilities
apt install synaptic filezilla vlc git curl unrar leafpad -y

#Remove unused things
apt purge firefox* libreoffice* gnome-orca* deja-dup* atril* rhythmbox* pidgin* thunderbird* plank* pluma* shotwell* synapse* -y
-y
#For this core packages better use remove than purge ...
apt remove ubuntu-mate-welcome mate-utils simple-scan popularity-contest -y

#Now update system
apt dist-upgrade

#Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
gdebi google-chrome-stable_current_amd64.deb -n
rm -rf gdebi google-chrome-stable_current_amd64.deb

#Install Atom
wget https://atom.io/download/deb
mv deb atom.deb
gdebi atom.deb -n
rm -rf atom.deb

#Install Adapta-Nokto-Eta and icons PPA
apt-add-repository ppa:tista/adapta -y
apt-add-repository ppa:noobslab/icons -y
apt update
apt install adapta-gtk-theme arc-icons


