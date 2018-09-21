#/bin/bash
#Edited by Robbowz - 2018

DATE_STAMP=$(date +%y-%m-%d-%s)
WANIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
SCRIPT_LOGFILE=/root/logtest_${DATE_STAMP}.log
PORT=41798


echo "Removing old files..."
sudo killall xuezd 
sudo rm xuezd  && rm xuez-cli && rm xuez-tx 
sudo rm -rf /root/.xuez && sudo rm -rf /root/xuez 
sudo rm -rf /root/.xuez2 && sudo rm -rf /root/xuez2 
sudo rm -rf /root/.xuez3 && sudo rm -rf /root/xuez3 
sudo rm -rf /root/.xuez4 && sudo rm -rf /root/xuez4 
sudo rm -rf /root/.xuez5 && sudo rm -rf /root/xuez5 
sudo rm -rf /root/.xuez6 && sudo rm -rf /root/xuez6 
sudo rm -rf /root/.xuez7 && sudo rm -rf /root/xuez7 
sudo rm -rf /root/.xuez8 && sudo rm -rf /root/xuez8 
sudo rm -rf /root/.xuez9 && sudo rm -rf /root/xuez9 
sudo rm -rf /root/.xuez10 && sudo rm -rf /root/xuez10 
echo "Done..."
echo ""


# TOR INSTALLATION
        sudo su -c "echo 'deb http://deb.torproject.org/torproject.org '$(lsb_release -c | cut -f2)' main' > /etc/apt/sources.list.d/torproject.list" 
	gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 
	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add - 
	sudo apt-get update 
	sudo apt-get -y install tor deb.torproject.org-keyring 
	sudo usermod -a -G debian-tor $(whoami) 

	sudo sed -i 's/#ControlPort 9051/ControlPort 9051/g' /etc/tor/torrc
	sudo sed -i 's/#CookieAuthentication 1/CookieAuthentication 1/g' /etc/tor/torrc
	sudo su -c "echo 'CookieAuthFileGroupReadable 1' >> /etc/tor/torrc"
	sudo su -c "echo 'LongLivedPorts 9033' >> /etc/tor/torrc"
	sudo su -c "echo 'HiddenServiceDir /etc/tor/hidden_service/"
	sudo systemctl restart tor.service
	sleep 5
 	TORHOSTNAME=`cat /etc/tor/hidden_service/hostname`


#### Install TOR ###
#echo "Installing TOR..."
#apt-get -qq install tor
#cat >> /etc/tor/torrc << EOL
### XUEZ CONFIGURATION ###
#HiddenServiceDir /var/lib/tor/hidden_service/
#ClientOnly 1
#ControlPort 9051
#NumEntryGuards 4
#NumDirectoryGuards 3
#GuardLifetime 2764800
#GeoIPExcludeUnknown 1
#HiddenServiceDir /var/lib/tor/hidden_service/
#HiddenServicePort 9033 127.0.0.1:52543
#HiddenServicePort 80 127.0.0.1:80
#LongLivedPorts 80,9033
#EOL
#  /etc/init.d/tor stop
#  sudo rm -R /var/lib/tor/hidden_service 2>/dev/null
#  /etc/init.d/tor start
#  echo "Starting TOR, please wait..."
#  sleep 5 # Give tor enough time to connect before we continue


# Set TORHOSTNAME
#  TORHOSTNAME=`cat /var/lib/tor/hidden_service/hostname`
	

#	cd ~
#	echo "Install packages..."
#    sudo apt-get -y upgrade 
#	sudo apt-get -y dist-upgrade 
#	sudo apt-get install -y ufw 
#	sudo add-apt-repository -yu ppa:bitcoin/bitcoin  
#	sudo apt-get -y update 
#	sudo apt-get -y install libzmq3-dev 
#	sudo apt-get -y install wget make automake autoconf build-essential libtool autotools-dev \
#	sudo git nano python-virtualenv pwgen virtualenv \
#	pkg-config libssl-dev libevent-dev bsdmainutils software-properties-common \
#	libboost-all-dev libminiupnpc-dev libdb4.8-dev libdb4.8++-dev 
#	echo "Install done..."


  	echo "The TOR address of your masternode is: $TORHOSTNAME"


echo "All done!"
exit
cd ~/
