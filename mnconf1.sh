PORT=41798
WANIP=$(dig +short myip.opendns.com @resolver1.opendns.com)

mkdir .ROBERT
cd .ROBERT
sudo printf "##XUEZ MASTERNODE CONFIGURATION##\n" > /root/.ROBERT/xeuz.conf
sudo chmod +x xeuz.conf

echo "Masternode Configuration"
echo "Your recognised IP address is:"
sudo hostname -I 
echo ""
echo "We are using your default IP address"
echo "Enter masternode private key for node, followed by [ENTER]: $ALIAS"
read PRIVKEY 
conffile=/root/.ROBERT/xeuz.conf 
IP=$(hostname -I) 
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ${conffile} 
echo "rpcpassword=passw"`shuf -i 100000-10000000 -n 1` >> ${conffile} 
echo -e "" >> ${conffile} 
echo -e "port=$PORT\masternodeaddr=$IP:$PORT\masternodeprivkey=$PRIVKEY" >> ${conffile} 
echo -e "rpcallowip=127.0.0.1\nrpcport=41799\nlisten=1\nlistenonion=1\nserver=1\ndaemon=1\nlogtimestamps=1\nmaxconnections=256\nmasternode=1\nport=$PORT\nmasternodeaddr=$IP:$PORT\nmasternodeprivkey=$PRIVKEY"  >> ${conffile}
sleep 5
cd ~/
