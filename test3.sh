#/bin/bash
#Edited by Robbowz - 2018

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
sudo killall xuezd
sudo rm xuezd  && rm xuez-cli && rm xuez-tx
sudo rm -rf /root/.xuez
sudo rm -rf /root/.xuez2
sudo rm -rf /root/.xuez3
sudo rm -rf /root/.xuez4
sudo rm -rf /root/.xuez5
sudo rm -rf /root/.xuez6
sudo rm -rf /root/.xuez7
sudo rm -rf /root/.xuez8
sudo rm -rf /root/.xuez9
sudo rm -rf /root/.xuez10
echo "Done..."
echo ""

	echo "Do you want to install several masternodes?"
	echo "If so, enter  the amount of masternodes you would like to install followed by [ENTER]: "
    read $number
    echo "We will now begin to install the pre-requisites and $number of XUEZ Coin masternodes."
    echo ""

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
	sudo systemctl restart tor.service

	
	sudo apt-get update
	sudo apt-get -y upgrade
	sudo apt-get -y dist-upgrade
	
	sudo apt-get install -y ufw
	sudo ufw allow ssh/tcp
	sudo ufw limit ssh/tcp
	sudo ufw logging on
	sudo ufw allow 22
	sudo ufw allow 41798
    sudo ufw allow 9051
    sudo ufw allow 9033
	echo "y" | sudo ufw enable
	sudo ufw status
	
wget https://bitbucket.org/davembg/xuez-distribution-repo/downloads/xuez-linux-cli-10110.tgz 		
tar -xvzf xuez-linux-cli-10110.tgz								
rm xuez-linux-cli-10110.tgz	
mkdir $CONF_DIR								
sudo su -c "echo -e 'listenonion=1' >> $CONF_DIR/$CONF_FILE"
echo "" >> $CONF_DIR/$CONF_FILE && echo "listenonion=1"  >> $CONF_DIR/$CONF_FILE

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
	echo ""
	echo "We are using your default IP address"
	echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
	read PRIVKEY
	IP=$(hostname -I)
	mkdir -p $CONF_DIR
	echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> $CONF_DIR/$CONF_FILE
	echo "rpcpassword=passw"`shuf -i 100000-10000000 -n 1` >> $CONF_DIR/$CONF_FILE
	echo "rpcallowip=127.0.0.1" >> $CONF_DIR/$CONF_FILE
    echo "rpcport=41799" >> $CONF_DIR/$CONF_FILE
	echo "listen=1" >> $CONF_DIR/$CONF_FILE
	echo "listenonion=1" >> $CONF_DIR/$CONF_FILE
	echo "server=1" >> $CONF_DIR/$CONF_FILE
	echo "daemon=1" >> $CONF_DIR/$CONF_FILE
	echo "logtimestamps=1" >> $CONF_DIR/$CONF_FILE
	echo "maxconnections=256" >> $CONF_DIR/$CONF_FILE
	echo "masternode=1" >> $CONF_DIR/$CONF_FILE
	echo "" >> $CONF_DIR/$CONF_FILE
	echo "" >> $CONF_DIR/$CONF_FILE
	echo "port=$PORT" >> $CONF_DIR/$CONF_FILE
	echo "masternodeaddr=$IP:$PORT" >> $CONF_DIR/$CONF_FILE
	echo "masternodeprivkey=$PRIVKEY" >> $CONF_DIR/$CONF_FILE
	./xuezd -daemon
	sudo su -c "echo 'listenonion=1' >> /.xuez/xuez.conf"
	echo "if server start failure try ./xuezd -reindex"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!                                                 !"
	echo "! Your MasterNode Is setup please close terminal  !"
	echo "!   and continue the local wallet setup guide     !"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""
fi
}

{
if [ $number = 1 ]
	then
	exit 0
	else
wget https://bitbucket.org/davembg/xuez-distribution-repo/downloads/xuez-linux-cli-10110.tgz 		
tar -xvzf xuez-linux-cli-10110.tgz								
rm xuez-linux-cli-10110.tgz									
sudo su -c "echo -e 'listenonion=1' >> $CONF_DIR2/$CONF_FILE2"
echo "" >> $CONF_DIR2/$CONF_FILE2 && echo "listenonion=1"  >> $CONF_DIR2/$CONF_FILE2

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
	echo ""
	echo "We are using your default IP address"
	echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
	read PRIVKEY2
	IP=$(hostname -I)
	mkdir -p $CONF_DIR2
	echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> $CONF_DIR2/$CONF_FILE2
	echo "rpcpassword=passw"`shuf -i 100000-10000000 -n 1` >> $CONF_DIR2/$CONF_FILE2
	echo "rpcallowip=127.0.0.1" >> $CONF_DIR2/$CONF_FILE2
    echo "rpcport=417800" >> $CONF_DIR2/$CONF_FILE2
	echo "listen=1" >> $CONF_DIR2/$CONF_FILE2
	echo "listenonion=1" >> $CONF_DIR2/$CONF_FILE2
	echo "server=1" >> $CONF_DIR2/$CONF_FILE2
	echo "daemon=1" >> $CONF_DIR2/$CONF_FILE2
	echo "logtimestamps=1" >> $CONF_DIR2/$CONF_FILE2
	echo "maxconnections=256" >> $CONF_DIR2/$CONF_FILE2
	echo "masternode=1" >> $CONF_DIR2/$CONF_FILE2
	echo "" >> $CONF_DIR2/$CONF_FILE2
	echo "" >> $CONF_DIR2/$CONF_FILE2
	echo "port=$PORT" >> $CONF_DIR2/$CONF_FILE2
	echo "masternodeaddr=$IP:$PORT" >> $CONF_DIR2/$CONF_FILE2
	echo "masternodeprivkey=$PRIVKEY2" >> $CONF_DIR2/$CONF_FILE2
	.xuez2/xuezd -daemon -datadir=/root/.xuez2
	sudo su -c "echo 'listenonion=1' >> /.xuez2/xuez2.conf"
	echo "if server start failure try .xuez2/xuezd -reindex"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!                                                 !"
	echo "! Your MasterNode Is setup please close terminal  !"
	echo "!   and continue the local wallet setup guide     !"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""
fi
}

{
if [ $number = 2 ]
	then
	exit 0
	else
wget https://bitbucket.org/davembg/xuez-distribution-repo/downloads/xuez-linux-cli-10110.tgz 		
tar -xvzf xuez-linux-cli-10110.tgz								
rm xuez-linux-cli-10110.tgz									
sudo su -c "echo -e 'listenonion=1' >> $CONF_DIR2/$CONF_FILE2"
echo "" >> $CONF_DIR2/$CONF_FILE2 && echo "listenonion=1"  >> $CONF_DIR2/$CONF_FILE2

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
	echo ""
	echo "We are using your default IP address"
	echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
	read PRIVKEY3
	IP=$(hostname -I)
	mkdir -p $CONF_DIR3
	echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> $CONF_DIR3/$CONF_FILE3
	echo "rpcpassword=passw"`shuf -i 100000-10000000 -n 1` >> $CONF_DIR3/$CONF_FILE3
	echo "rpcallowip=127.0.0.1" >> $CONF_DIR3/$CONF_FILE3
    echo "rpcport=417800" >> $CONF_DIR3/$CONF_FILE3
	echo "listen=1" >> $CONF_DIR3/$CONF_FILE3
	echo "listenonion=1" >> $CONF_DIR3/$CONF_FILE3
	echo "server=1" >> $CONF_DIR3/$CONF_FILE3
	echo "daemon=1" >> $CONF_DIR3/$CONF_FILE3
	echo "logtimestamps=1" >> $CONF_DIR3/$CONF_FILE3
	echo "maxconnections=256" >> $CONF_DIR3/$CONF_FILE3
	echo "masternode=1" >> $CONF_DIR3/$CONF_FILE3
	echo "" >> $CONF_DIR3/$CONF_FILE3
	echo "" >> $CONF_DIR3/$CONF_FILE3
	echo "port=$PORT" >> $CONF_DIR3/$CONF_FILE3
	echo "masternodeaddr=$IP:$PORT" >> $CONF_DIR3/$CONF_FILE3
	echo "masternodeprivkey=$PRIVKEY3" >> $CONF_DIR3/$CONF_FILE3
	.xuez2/xuezd -daemon -datadir=/root/.xuez3
	sudo su -c "echo 'listenonion=1' >> /.xuez3/xuez3.conf"
	echo "if server start failure try .xuez3/xuezd -reindex"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!                                                 !"
	echo "! Your MasterNode Is setup please close terminal  !"
	echo "!   and continue the local wallet setup guide     !"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo ""
fi
}

echo "$(cat /.xuez/xuez.conf)"
echo "$(cat /.xuez2/xuez2.conf)"
echo "$(cat /.xuez3/xuez3.conf)"
