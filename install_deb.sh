#!/bin/bash
printf "
 ██████╗  ██████╗██╗   ██╗ ██████╗ ██████╗ ██╗███╗   ██╗
██╔═══██╗██╔════╝██║   ██║██╔════╝██╔═══██╗██║████╗  ██║
██║   ██║██║     ██║   ██║██║     ██║   ██║██║██╔██╗ ██║
██║   ██║██║     ╚██╗ ██╔╝██║     ██║   ██║██║██║╚██╗██║
╚██████╔╝╚██████╗ ╚████╔╝ ╚██████╗╚██████╔╝██║██║ ╚████║
 ╚═════╝  ╚═════╝  ╚═══╝   ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝
                                                        \n"
																
sudo apt update																

sudo apt install python3-pip
pip3 install opencv-python==3.2.0.6 --force-reinstall

sudo apt install build-essential libtool autotools-dev autoconf pkg-config libssl-dev
sudo apt install libboost-all-dev
sudo apt install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
sudo apt install libqrencode-dev autoconf openssl libssl-dev libevent-dev
sudo apt install libminiupnpc-dev git curl automake

rm -rf /tmp/ocvcoin

mkdir /tmp/ocvcoin

cd /tmp/ocvcoin

git clone https://github.com/ocvcoin/ocvcoin.git ocvcoin


rm -rf /home/user/pow_server

mkdir /home/user/pow_server

git clone https://github.com/ocvcoin/pow_server.git /home/user/pow_server

chmod -R 755 /tmp/ocvcoin
		
cd /tmp/ocvcoin/ocvcoin/depends

make

SHARED_FOLDER="$(ls -td -- */ | head -n 1 | cut -d'/' -f1)"

cd /tmp/ocvcoin/ocvcoin

sh autogen.sh

bash -c "cd /tmp/ocvcoin/ocvcoin && CONFIG_SITE=/tmp/ocvcoin/ocvcoin/depends/${SHARED_FOLDER}/share/config.site ./configure --disable-tests --with-incompatible-bdb"

make

make install

PASS_WORD="$(env LC_CTYPE=C tr -dc a-zA-Z0-9 < /dev/urandom| head -c 32; echo)"


mkdir /home/user/.ocvcoin

cp /tmp/ocvcoin/ocvcoin/share/examples/ocvcoin.conf /home/user/.ocvcoin/ocvcoin.conf

sudo sed -i 's/#rpcuser=alice/rpcuser=ocvcoinrpc/g' /home/user/.ocvcoin/ocvcoin.conf
sudo sed -i "s/#rpcpassword=DONT_USE_THIS_YOU_WILL_GET_ROBBED_8ak1gI25KFTvjovL3gAM967mies3E=/rpcpassword=${PASS_WORD}/g" /root/.ocvcoin/ocvcoin.conf

printf "\\n"
printf "Please reboot system so the daemon can start."
printf "\\n"
printf "\\n"
printf "Please keep the following information!"
printf "\\n"
printf "\\n"
printf "RPC User: ocvcoinrpc"
printf "\\n"
printf "RPC Password: ${PASS_WORD}"
printf "\\n"
printf "\\n"
printf "For more settings, you can take a look at this file: /home/user/.ocvcoin/ocvcoin.conf"
printf "\\n"
printf "\\n"
