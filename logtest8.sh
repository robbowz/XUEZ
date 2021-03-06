#/bin/bash
#Edited by Robbowz - 2018

DATE_STAMP="$(date +%y-%m-%d-%s)
WANIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
SCRIPT_LOGFILE="/root/logtest_${DATE_STAMP}.log"
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

echo ""
echo "................................................................................"
echo "......................................N0OKW....................................."
echo "....................................W0c'.,dX...................................."
echo "..................................WKo'.....:ON.................................."
echo ".................................Nx;........'lKW................................"
echo "...............................WO:............,xX..............................."
echo ".............................WKl'...............cOW............................."
echo "............WWWWWWWWWWWWWWWWWN0xxxxxxxxxxxxxxxxxxOXWWWWWWWWWWWWWWWWWW..........."
echo "............WWNNNNNNNNWWWWXOxxxxxxdddddddddddxxxdkKNNNNNNNNNNNNNNNWW............"
echo "..............WWNNNNNNWMW0l'....................;xXNNNNNNNNNNNNNWW.............."
echo "................WWNNNNWXd,.....................l0NNNNNNNNNNNNNWW................"
echo "...................WWNk::cccccccc:...........;xXNNNNNNNNNNNNWW.................."
echo "...................W0o,'xXNNNNNNNXx;.......'o0NNNNNNNNNNNX00N..................."
echo ".................WKo,..'oXNNNNNNNNNKd,....:kXNNNNNNNNNNX0o,,l0W................."
echo "................Nx;.....,lOXNNNNNNNNNOl::dKNNNNNNNNNNXOl'....;dX................"
echo "..............WOc'........,o0XNNNNNNNNXXXNNNNNNNNNNXOl'.......':kN.............."
echo "............WKo,............,o0XNNNNNNNNNNNNNNNNNXOl,...........'l0W............"
echo "...........Xx;................;dKNNNNNNNNNNNNNNXOl,...............,dXW.........."
echo ".........Nk:'...................:kNNNNNNNNNNNNKo,...................;kN........."
echo "........Nx,....................,o0NNNNNNNNNNNNKd,....................'xW........"
echo "........WKl'..................:xKXXXXXXXXXXXXXXXOc'.................,dXW........"
echo "..........Nk;...............'lk0000000OkkO0000000Od:'.............'c0W.........."
echo "...........WKl'............:xO000000Oxc,,:dO0000000ko;'.''.''..'';xX............"
echo ".............Nk;.........,oO000000Oxc'....':xO000000Okl,''''.'''l0W............."
echo "..............WKl'......:dkOO000Oxc'........,cxO000000Od;'''.';xX..............."
echo "................Nk;...,lxkkkkkkdc'............,cxO00000k:''''c0W................"
echo ".................WKl,:dkkkkkxo;................',lxOOOOx;;llxX.................."
echo "..................WKkxkkkkxo;....................',;:::;';x0XW.................."
echo ".................WKOkkkkxo;...........................'';d000KN................."
echo "...............WN0kkkkkOo'............................'c0NK0000XW..............."
echo "..............NKOkkkkk0KOl;,,,,,,,,,,,,,,,,,,,,,,,,;;:o0NNK00000KNW............."
echo ".............N0OOkkkOOOOOOkkxddddddddddddddddddddddxkkOO00000000KKNW............"
echo "............WWNNNNNNNNNNNNNXx:'''''''''''''''''''':kXNNNNNNWWWWWWWW............."
echo "............................WO:..................:OW............................"
echo ".............................MXo'..............'oX.............................."
echo "...............................WO:............:OW..............................."
echo ".................................Xo'........'oX................................."
echo "..................................WO:......;OW.................................."
echo "....................................Xo'..'oK...................................."
echo ".....................................W0ddON....................................."
echo ""
echo "****************************************************************************"
echo "* This script will install and configure your XUEZ Coin masternodes.       *"
echo "*                 										                 *"
echo "*    If you have any issues please ask for help on the XUEZ discord.       *"
echo "*                      https://discord.gg/QWcK5Yk                          *"
echo "*                        https://xuezcoin.com/                             *"
echo "****************************************************************************"
echo ""
echo ""
echo ""

echo "Removing old files..."
sudo killall xuezd &>> ${SCRIPT_LOGFILE}
sudo rm xuezd  && rm xuez-cli && rm xuez-tx &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez && sudo rm -rf /root/xuez &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez2 && sudo rm -rf /root/xuez2 &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez3 && sudo rm -rf /root/xuez3 &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez4 && sudo rm -rf /root/xuez4 &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez5 && sudo rm -rf /root/xuez5 &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez6 && sudo rm -rf /root/xuez6 &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez7 && sudo rm -rf /root/xuez7 &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez8 && sudo rm -rf /root/xuez8 &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez9 && sudo rm -rf /root/xuez9 &>> ${SCRIPT_LOGFILE}
sudo rm -rf /root/.xuez10 && sudo rm -rf /root/xuez10 &>> ${SCRIPT_LOGFILE}
echo "Done..."
echo ""

  echo -e "[0;35m Logfile:[0m ${SCRIPT_LOGFILE}"
	echo "Do you want to install several masternodes?"
	echo "If so, enter the amount of masternodes you would like to install followed by [ENTER] (Maximum 10): "
   	read $number
   	echo "We will now begin to install the pre-requisites and $number of XUEZ Coin masternodes."
   	echo ""

    sudo su -c "echo 'deb http://deb.torproject.org/torproject.org '$(lsb_release -c | cut -f2)' main' > /etc/apt/sources.list.d/torproject.list" &>> ${SCRIPT_LOGFILE}
	gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 &>> ${SCRIPT_LOGFILE}
	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add - &>> ${SCRIPT_LOGFILE}
	sudo apt-get update &>> ${SCRIPT_LOGFILE}
	sudo apt-get -y install tor deb.torproject.org-keyring &>> ${SCRIPT_LOGFILE}
	sudo usermod -a -G debian-tor $(whoami) &>> ${SCRIPT_LOGFILE}

	sudo sed -i 's/#ControlPort 9051/ControlPort 9051/g' /etc/tor/torrc
	sudo sed -i 's/#CookieAuthentication 1/CookieAuthentication 1/g' /etc/tor/torrc
	sudo su -c 'CookieAuthFileGroupReadable 1' >> /etc/tor/torrc
	sudo su -c 'LongLivedPorts 9033' >> /etc/tor/torrc
	sudo systemctl restart tor.service

	
	sudo apt-get update &>> ${SCRIPT_LOGFILE}
	sudo apt-get -y upgrade &>> ${SCRIPT_LOGFILE}
	sudo apt-get -y dist-upgrade &>> ${SCRIPT_LOGFILE}
	
	sudo apt-get install -y ufw &>> ${SCRIPT_LOGFILE}
	sudo ufw allow ssh/tcp &>> ${SCRIPT_LOGFILE}
	sudo ufw limit ssh/tcp &>> ${SCRIPT_LOGFILE}
	sudo ufw logging on &>> ${SCRIPT_LOGFILE}
	sudo ufw allow 22 &>> ${SCRIPT_LOGFILE}
	sudo ufw allow 41798 &>> ${SCRIPT_LOGFILE}
   	sudo ufw allow 9051 &>> ${SCRIPT_LOGFILE}
    sudo ufw allow 9033 &>> ${SCRIPT_LOGFILE}
	echo "y" | sudo ufw enable
	sudo ufw status &>> ${SCRIPT_LOGFILE}
	

function configure_masternode1() { &>> ${SCRIPT_LOGFILE}
if [ $number = 0 ] &>> ${SCRIPT_LOGFILE}
	then &>> ${SCRIPT_LOGFILE}
	exit 0 &>> ${SCRIPT_LOGFILE}
	else &>> ${SCRIPT_LOGFILE}
wget https://bitbucket.org/davembg/xuez-distribution-repo/downloads/xuez-linux-cli-10110.tgz &>> ${SCRIPT_LOGFILE}
tar -xvzf xuez-linux-cli-10110.tgz	&>> ${SCRIPT_LOGFILE}			
rm xuez-linux-cli-10110.tgz &>> ${SCRIPT_LOGFILE}
mkdir /root/xuez/ &>> ${SCRIPT_LOGFILE}
mkdir /root/.xuez/ &>> ${SCRIPT_LOGFILE}
cp /root/xuezd /root/xuez/xuezd &>> ${SCRIPT_LOGFILE}
cp /root/xuez-cli /root/xuez/xuez-cli &>> ${SCRIPT_LOGFILE}
cp /root/xuez-tx /root/xuez/xuez-tx &>> ${SCRIPT_LOGFILE}
sudo chmod +x /root/xuez/xuezd &>> ${SCRIPT_LOGFILE}
sudo chmod +x /root/xuez/xuez-cli &>> ${SCRIPT_LOGFILE}
sudo chmod +x /root/xuez/xuez-tx &>> ${SCRIPT_LOGFILE}
sudo printf "##XUEZ MASTERNODE CONFIGURATION##\n" > $CONF_DIR/$CONF_FILE &>> ${SCRIPT_LOGFILE}
sudo rm xuezd && sudo rm xuez-cli && sudo rm xuez-tx	&>> ${SCRIPT_LOGFILE}			

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I &>> ${SCRIPT_LOGFILE}
	echo ""
	echo "We are using your default IP address"
	echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
	read PRIVKEY &>> ${SCRIPT_LOGFILE}
	mkdir -p $CONF_DIR &>> ${SCRIPT_LOGFILE}
    conffile=/root/.xeuz/xeuz.conf &>> ${SCRIPT_LOGFILE}
	IP=$(hostname -I) &>> ${SCRIPT_LOGFILE}
	echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ${conffile} &>> ${SCRIPT_LOGFILE}
	echo "rpcpassword=passw"`shuf -i 100000-10000000 -n 1` >> ${conffile} &>> ${SCRIPT_LOGFILE}
	echo -e "rpcallowip=127.0.0.1\nrpcport=41799\nlisten=1\nlistenonion=1\nserver=1\ndaemon=1\nlogtimestamps=1\nmaxconnections=256\nmasternode=1"  >> ${conffile} &>> ${SCRIPT_LOGFILE}
    echo -e "" >> ${conffile} &>> ${SCRIPT_LOGFILE}
	echo -e "port=$PORT\masternodeaddr=$IP:$PORT\masternodeprivkey=$PRIVKEY" >> ${conffile} &>> ${SCRIPT_LOGFILE}
    sleep 20 
	/root/xuez/xuezd -daemon -datadir=/root/.xuez &>> ${SCRIPT_LOGFILE}
	sleep 20
	echo "if server start failure try /root/xuez/xuezd -reindex"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!                                                 !"
	echo "!        Your first MasterNode Is setup			!"
	echo "!   					        					!"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""
fi
}


function configure_masternode2() { &>> ${SCRIPT_LOGFILE}
if [ $number = 1 ] &>> ${SCRIPT_LOGFILE}
	then &>> ${SCRIPT_LOGFILE}
	exit 0 &>> ${SCRIPT_LOGFILE}
	else &>> ${SCRIPT_LOGFILE}
wget https://bitbucket.org/davembg/xuez-distribution-repo/downloads/xuez-linux-cli-10110.tgz &>> ${SCRIPT_LOGFILE}
tar -xvzf xuez-linux-cli-10110.tgz	&>> ${SCRIPT_LOGFILE}
rm xuez-linux-cli-10110.tgz &>> ${SCRIPT_LOGFILE}
mkdir /root/xuez2/ &>> ${SCRIPT_LOGFILE}
mkdir /root/.xuez2/ &>> ${SCRIPT_LOGFILE}
cp /root/xuezd /root/xuez2/xuezd &>> ${SCRIPT_LOGFILE}
cp /root/xuez-cli /root/xuez2/xuez-cli &>> ${SCRIPT_LOGFILE}
cp /root/xuez-tx /root/xuez2/xuez-tx &>> ${SCRIPT_LOGFILE}
sudo chmod +x /root/xuez2/xuezd &>> ${SCRIPT_LOGFILE}
sudo chmod +x /root/xuez2/xuez-cli &>> ${SCRIPT_LOGFILE}
sudo chmod +x /root/xuez2/xuez-tx &>> ${SCRIPT_LOGFILE}
sudo printf "##XUEZ MASTERNODE CONFIGURATION##\n" > $CONF_DIR2/$CONF_FILE2 &>> ${SCRIPT_LOGFILE}
sudo rm xuezd && sudo rm xuez-cli && sudo rm xuez-tx	&>> ${SCRIPT_LOGFILE}			

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I &>> ${SCRIPT_LOGFILE}
	echo ""
	echo "We are using your default IP address"
	echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
	read PRIVKEY2 &>> ${SCRIPT_LOGFILE}
    mkdir -p $CONF_DIR2 &>> ${SCRIPT_LOGFILE}
    conffile2=/root/.xeuz2/xeuz2.conf &>> ${SCRIPT_LOGFILE}
	IP=$(hostname -I)
	echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ${conffile2} &>> ${SCRIPT_LOGFILE}
	echo "rpcpassword=passw"`shuf -i 100000-10000000 -n 1` >> ${conffile2} &>> ${SCRIPT_LOGFILE}
	echo -e "rpcallowip=127.0.0.1\nrpcport=41800\nlisten=1\nlistenonion=1\nserver=1\ndaemon=1\nlogtimestamps=1\nmaxconnections=256\nmasternode=1"  >> ${conffile2} &>> ${SCRIPT_LOGFILE}
	echo -e "" >> ${conffile2} &>> ${SCRIPT_LOGFILE}
	echo -e "port=$PORT\masternodeaddr=$IP:$PORT\masternodeprivkey=$PRIVKEY2" >> ${conffile2} &>> ${SCRIPT_LOGFILE}
    sleep 20
	/root/xuez2/xuezd -daemon -datadir=/root/.xuez2 &>> ${SCRIPT_LOGFILE}
	sleep 20
	echo "if server start failure try /root/xuez2/xuezd -reindex"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!                                                 !"
	echo "!        Your second MasterNode Is setup			!"
	echo "!   					        					!"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""

fi
}


function configure_masternode3() {
if [ $number = 2 ]
	then
	exit 0
	else
wget https://bitbucket.org/davembg/xuez-distribution-repo/downloads/xuez-linux-cli-10110.tgz 		
tar -xvzf xuez-linux-cli-10110.tgz								
rm xuez-linux-cli-10110.tgz
mkdir /root/xuez3/
mkdir /root/.xuez3/
cp /root/xuezd /root/xuez3/xuezd
cp /root/xuez-cli /root/xuez3/xuez-cli
cp /root/xuez-tx /root/xuez3/xuez-tx
sudo chmod +x /root/xuez3/xuezd
sudo chmod +x /root/xuez3/xuez-cli
sudo chmod +x /root/xuez3/xuez-tx
sudo printf "##XUEZ MASTERNODE CONFIGURATION##\n" > $CONF_DIR3/$CONF_FILE3 &>> ${SCRIPT_LOGFILE}
sudo rm xuezd && sudo rm xuez-cli && sudo rm xuez-tx	&>> ${SCRIPT_LOGFILE}			

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
	echo ""
	echo "We are using your default IP address"
	echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
	read PRIVKEY3
    	mkdir -p $CONF_DIR3
    	conffile3=/root/.xeuz3/xeuz3.conf
	IP=$(hostname -I)
	echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ${conffile3}
	echo "rpcpassword=passw"`shuf -i 100000-10000000 -n 1` >> ${conffile3}
	echo -e "rpcallowip=127.0.0.1\nrpcport=41801\nlisten=1\nlistenonion=1\nserver=1\ndaemon=1\nlogtimestamps=1\nmaxconnections=256\nmasternode=1"  >> ${conffile3}
	echo -e "" >> ${conffile3}
	echo -e "port=$PORT\masternodeaddr=$IP:$PORT\masternodeprivkey=$PRIVKEY3" >> ${conffile3}
    	sleep 20
	/root/xuez3/xuezd -daemon -datadir=/root/.xuez3
	sleep 20
	echo "if server start failure try /root/xuez3/xuezd -reindex"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!                                                 !"
	echo "!        Your third MasterNode Is setup		!"
	echo "!   					        !"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""

fi
}

# main routine
configure_masternode1
configure_masternode2
configure_masternode3

echo "All done!"
cd ~/
