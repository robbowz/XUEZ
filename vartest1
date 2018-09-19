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


function removing_old_files() {
echo "Removing old files..."
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
}


	echo "Do you want to install several masternodes?"
	echo "If so, enter the amount of masternodes you would like to install followed by [ENTER] Maximum 10: "
   	read $number
   	echo "We will now begin to install the pre-requisites and $number of XUEZ Coin masternodes."
   	echo ""



function configure_masternode1() {
cd ~/
mkdir /root/xuez/
mkdir /root/.xuez/
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
echo -e "" >> ${conffile} 
echo -e "masternodeprivkey=$PRIVKEY"  >> ${conffile}
sleep 1
cd ~/
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!                                                 !"
echo "!        Your third MasterNode Is setup		     !"
echo "!   					                             !"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
}


function configure_masternode2() {
cd ~/
mkdir /root/xuez2/
mkdir /root/.xuez2/
cd .xuez2
sudo printf "##XUEZ MASTERNODE CONFIGURATION##\n" > /root/.xuez2/xuez2.conf
sudo printf "" > /root/.xuez2/xuez2.conf
sudo chmod +x xuez2.conf

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
echo ""
echo "We are using your default IP address"
echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
read PRIVKEY2
conffile2=/root/.xuez2/xuez2.conf
echo -e "" >> ${conffile2} 
echo -e "masternodeprivkey=$PRIVKEY2"  >> ${conffile2}
sleep 1
cd ~/
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!                                                 !"
echo "!        Your third MasterNode Is setup		     !"
echo "!   					                             !"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
}


function configure_masternode3() {
cd ~/
mkdir /root/xuez3/
mkdir /root/.xuez3/
cd .xuez3
sudo printf "##XUEZ MASTERNODE CONFIGURATION##\n" > /root/.xuez3/xuez3.conf
sudo printf "" > /root/.xuez3/xuez3.conf
sudo chmod +x xuez3.conf

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
echo ""
echo "We are using your default IP address"
echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
read PRIVKEY3
conffile3=/root/.xuez3/xuez3.conf
echo -e "" >> ${conffile3} 
echo -e "masternodeprivkey=$PRIVKEY3"  >> ${conffile3}
sleep 1
cd ~/
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!                                                 !"
echo "!        Your third MasterNode Is setup		     !"
echo "!   					                             !"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
}


function configure_masternode4() {
cd ~/
mkdir /root/xuez4/
mkdir /root/.xuez4/
cd .xuez4
sudo printf "##XUEZ MASTERNODE CONFIGURATION##\n" > /root/.xuez4/xuez4.conf
sudo printf "" > /root/.xuez4/xuez4.conf
sudo chmod +x xuez4.conf

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
echo ""
echo "We are using your default IP address"
echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
read PRIVKEY4
conffile4=/root/.xuez4/xuez4.conf
echo -e "" >> ${conffile4} 
echo -e "masternodeprivkey=$PRIVKEY4"  >> ${conffile4}
sleep 1
cd ~/
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!                                                 !"
echo "!        Your third MasterNode Is setup		     !"
echo "!   					                             !"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
}


# main routine
removing_old_files
configure_masternode1
if [ "$number" = "1" ]; then
  echo -e "$number of Masternodes installed. Exiting script."
  exit 1
fi

configure_masternode2
if [ "$number" = "2" ]; then
  echo -e "$number of Masternodes installed. Exiting script."
  exit 1
fi

configure_masternode3
if [ "$number" = "3" ]; then
  echo -e "$number of Masternodes installed. Exiting script."
  exit 1
fi

echo "All done!"
exit
cd ~/
