#/bin/bash
#Edited by Robbowz - 2018

DATE_STAMP=$(date +%y-%m-%d-%s)
WANIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
SCRIPT_LOGFILE=/root/logtest_${DATE_STAMP}.log
CONF_DIR=~/root/.xuez\/
CONF_DIR2=~/root/.xuez2\/
CONF_DIR3=~/root/.xuez3\/
CONF_DIR4=~/root/.xuez4\/
CONF_DIR5=~/root/.xuez5\/
CONF_DIR6=~/root/.xuez6\/
CONF_DIR7=~/root/.xuez7\/
CONF_DIR8=~/root/.xuez8\/
CONF_DIR9=~/root/.xuez9\/
CONF_DIR10=~/root/.xuez10\/
CONF_FILE=xuez.conf
CONF_FILE2=xuez2.conf
CONF_FILE3=xuez3.conf
CONF_FILE4=xuez4.conf
CONF_FILE5=xuez5.conf
CONF_FILE6=xuez6.conf
CONF_FILE7=xuez7.conf
CONF_FILE8=xuez8.conf
CONF_FILE9=xuez9.conf
CONF_FILE10=xuez10.conf
WALL_DIR=/root/xuez\/
WALL_DIR2=/root/xuez2\/
WALL_DIR3=/root/xuez3\/
WALL_DIR4=/root/xuez4\/
WALL_DIR5=/root/xuez5\/
WALL_DIR6=/root/xuez6\/
WALL_DIR7=/root/xuez7\/
WALL_DIR8=/root/xuez8\/
WALL_DIR9=/root/xuez9\/
WALL_DIR10=/root/xuez10\/
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


	echo "Do you want to install several masternodes?"
	echo "If so, enter the amount of masternodes you would like to install followed by [ENTER] Maximum 10: "
   	read $number
   	echo "We will now begin to install the pre-requisites and $number of XUEZ Coin masternodes."
   	echo ""

# TOR INSTALLATION
#    sudo su -c "echo 'deb http://deb.torproject.org/torproject.org '$(lsb_release -c | cut -f2)' main' > /etc/apt/sources.list.d/torproject.list" 
#	gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 
#	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add - 
#	sudo apt-get update 
#	sudo apt-get -y install tor deb.torproject.org-keyring 
#	sudo usermod -a -G debian-tor $(whoami) 
#
#	sudo sed -i 's/#ControlPort 9051/ControlPort 9051/g' /etc/tor/torrc
#	sudo sed -i 's/#CookieAuthentication 1/CookieAuthentication 1/g' /etc/tor/torrc
#	sudo su -c "echo 'CookieAuthFileGroupReadable 1' >> /etc/tor/torrc"
#	sudo su -c "echo 'LongLivedPorts 9033' >> /etc/tor/torrc"
#	sudo su -c "echo 'HiddenServiceDir /etc/tor/hidden_service/"
#	sudo systemctl restart tor.service
#	sleep 10
# 	TORHOSTNAME=`cat /etc/tor/hidden_service/hostname`

### Install TOR ###
echo "Installing TOR..."
apt-get -qq install tor
cat >> /etc/tor/torrc << EOL
### XUEZ CONFIGURATION ###
HiddenServiceDir /var/lib/tor/hidden_service/
ClientOnly 1
ControlPort 9051
NumEntryGuards 4
NumDirectoryGuards 3
GuardLifetime 2764800
GeoIPExcludeUnknown 1
HiddenServiceDir /var/lib/tor/hidden_service/
HiddenServicePort 9033 127.0.0.1:52543
HiddenServicePort 80 127.0.0.1:80
LongLivedPorts 80,9033
EOL
  /etc/init.d/tor stop
  sudo rm -R /var/lib/tor/hidden_service 2>/dev/null
  /etc/init.d/tor start
  echo "Starting TOR, please wait..."
  sleep 5 # Give tor enough time to connect before we continue


# Set TORHOSTNAME
  TORHOSTNAME=`cat /var/lib/tor/hidden_service/hostname`
	

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


    echo "Installing Firewall..."
	sudo ufw allow ssh/tcp 
	sudo ufw limit ssh/tcp 
	sudo ufw logging on 
	sudo ufw allow 22 
	sudo ufw allow 41798 
   	sudo ufw allow 9051 
    sudo ufw allow 9033 
	echo "y" | sudo ufw enable
	sudo ufw status
    echo "Firewall done..."


# setup Wallet
wget https://bitbucket.org/davembg/xuez-distribution-repo/downloads/xuez-linux-cli-10110.tgz 
tar -xvzf xuez-linux-cli-10110.tgz
rm xuez-linux-cli-10110.tgz 
mkdir /root/xuez/ 
mkdir /root/.xuez/ 
cp /root/xuezd /root/xuez/xuezd 
cp /root/xuez-cli /root/xuez/xuez-cli 
cp /root/xuez-tx /root/xuez/xuez-tx 
cd xuez
sudo chmod +x /root/xuez/xuezd 
sudo chmod +x /root/xuez/xuez-cli 
sudo chmod +x /root/xuez/xuez-tx 
cd ~/
sudo rm xuezd && sudo rm xuez-cli && sudo rm xuez-tx
cd .xuez
sudo printf "##XUEZ MASTERNODE CONFIGURATION##\n" > /root/.xuez/xuez.conf
sudo printf "" > /root/.xuez/xuez.conf
sudo chmod +x xuez.conf

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
	echo ""
	echo "We are using your default IP address"
	echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
	read PRIVKEY 
    conffile=/root/.xuez/xuez.conf 
	IP=$(hostname -I) 
	echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ${conffile} 
	echo "rpcpassword=passw"`shuf -i 100000-10000000 -n 1` >> ${conffile} 
    echo -e "" >> ${conffile} 
    echo -e "rpcallowip=127.0.0.1\nrpcport=41799\nlisten=1\nlistenonion=1\nserver=1\ndaemon=1\nlogtimestamps=1\nmaxconnections=256\nmasternode=1\nport=$PORT\nmasternodeaddr=$TORHOSTNAME:$PORT\nmasternodeprivkey=$PRIVKEY"  >> ${conffile}
    sleep 1
    cd ~/
	/root/xuez/xuezd -daemon -datadir=/root/.xuez 
	sleep 20
	echo "if server start failure try /root/xuez/xuezd -reindex"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!                                                 !"
	echo "!        Your first MasterNode Is setup			!"
	echo "!   					        					!"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""
  echo "The TOR address of your masternode is: $TORHOSTNAME"


echo "All done!"
exit
cd ~/
