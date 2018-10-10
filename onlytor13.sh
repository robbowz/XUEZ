#!/bin/bash

TORFILE=torrc
SCRIPT_LOGFILE="/tmp/tor.log"

# TOR INSTALLATION 1
#sudo su -c "echo 'deb http://deb.torproject.org/torproject.org '$(lsb_release -c | cut -f2)' main' > /etc/apt/sources.list.d/torproject.list" &>> ${SCRIPT_LOGFILE} 
#gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 &>> ${SCRIPT_LOGFILE}
#gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add - &>> ${SCRIPT_LOGFILE}
#sudo apt-get update &>> ${SCRIPT_LOGFILE}
#sudo apt-get -y install tor deb.torproject.org-keyring &>> ${SCRIPT_LOGFILE}
#sudo usermod -a -G debian-tor $(whoami) &>> ${SCRIPT_LOGFILE}

#sudo sed -i 's/#ControlPort 9051/ControlPort 9051/g' /etc/tor/torrc &>> ${SCRIPT_LOGFILE}
#sudo sed -i 's/#CookieAuthentication 1/CookieAuthentication 1/g' /etc/tor/torrc &>> ${SCRIPT_LOGFILE}
#sudo su -c "echo 'CookieAuthFileGroupReadable 1' >> /etc/tor/torrc" &>> ${SCRIPT_LOGFILE}
#sudo su -c "echo 'LongLivedPorts 9033' >> /etc/tor/torrc" &>> ${SCRIPT_LOGFILE}
#sudo su -c "echo 'HiddenServiceDir /etc/tor/hidden_service/" &>> ${SCRIPT_LOGFILE}
#sudo systemctl restart tor.service &>> ${SCRIPT_LOGFILE}
#sleep 5
#TORHOSTNAME=`cat /etc/tor/hidden_service/hostname`&>> ${SCRIPT_LOGFILE}

# Install TOR
echo "Installing TOR..."
apt-get -qq install tor
mk ./etc/tor/torrc
cat >> ./etc/tor/torrc
### CONFIGURATION ###
echo -e "HiddenServiceDir ./var/lib/tor/hidden_service/\nClientOnly 1\nControlPort 9051\nNumEntryGuards 4\nNumDirectoryGuards 3\nGuardLifetime 2764800\nGeoIPExcludeUnknown 1\nCookieAuthFileGroupReadable 1\nHiddenServiceDir /var/lib/tor/hidden_service/\nHiddenServicePort 9033 127.0.0.1:9033\nHiddenServicePort 80 127.0.0.1:80\nLongLivedPorts 80,9033" >> ${torfile}
sleep 2
  ./etc/init.d/tor stop
  sudo rm -R ./var/lib/tor/hidden_service 2>/dev/null
  ./etc/init.d/tor start
  echo "Starting TOR, please wait..."
sleep 10 # Give tor enough time to connect before we continue

# Set TORHOSTNAME
TORHOSTNAME=`cat ./var/lib/tor/hidden_service//hostname`


echo "The TOR address of your masternode is: $TORHOSTNAME"
#echo "The Logfile is stored here: $SCRIPT_LOGFILE"


echo "All done!"
exit
cd ~/
