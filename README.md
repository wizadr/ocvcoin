IMPORTANT ANNOUNCEMENT!
AN UPDATE HAS ARRIVED TO SOLVE THE PROBLEM OF THE UNSTABLE ALGORITHM. WHEN THE NEW UPDATE WILL BE ACTIVE: "Tue Nov 09 2021 00:00:00 (GMT)"

YOU MUST UNINSTALL THE OLD VERSION AND INSTALL THE NEW VERSION BEFORE THIS DATE.

DO I NEED TO UPDATE "OCVCOIN'S PROOF-OF-WORK SERVER"?   YES!   YOU MUST INSTALL VERSION 2.0.0.0

DO I NEED TO UPDATE "miner script"?   YES!

DO I NEED TO UPDATE "Ocvcoin Core"?   NO!

Also, those who install Ocvcoin Core with UBUNTU automatic installation script should not forget to update the /home/pow_server/pow_server.py

THE LATEST VERSION IS HERE: https://raw.githubusercontent.com/ocvcoin/pow_server/main/pow_server.py

NOTE: RESTART PC AFTER DONE.


What is Ocvcoin?
----------------

It is modified version of bitcoin and it's pow mechanism. Heavy computations are used for resistance to asics. It uses the Open CV library for these computations.

HOW TO MINE OCVCOIN: [https://youtu.be/6ADEtxtAEyQ](https://youtu.be/6ADEtxtAEyQ)

HOW TO INSTALL OCVCOIN CORE: [https://youtu.be/z3Eh1TgPu78](https://youtu.be/z3Eh1TgPu78)

COMMUNITY: [https://bitcointalk.org/index.php?topic=5364831.0](https://bitcointalk.org/index.php?topic=5364831.0)

DISCORD: [https://discord.gg/NYYarPzNRA](https://discord.gg/NYYarPzNRA)

Dowload
----------------

(ONLY FOR 64 BIT WINDOWS)

Firstly you need to download, install and run the pow server. (pow server must be running as long as the ocvcoin application is running!)

OCVCOIN'S PROOF-OF-WORK SERVER: [ocvcoin_pow_server-2.0.0.0-win64-setup.exe](https://github.com/ocvcoin/pow_server/releases/download/2.0.0.0/ocvcoin_pow_server-2.0.0.0-win64-setup.exe)

OCVCOIN: [ocvcoin-0.21.1-win64-setup.exe](https://github.com/ocvcoin/ocvcoin/releases/download/v0.21.1/ocvcoin-0.21.1-win64-setup.exe)


How Can I Mining?
----------------

No mining pool yet. You can try to mine with the [our simple miner script](https://github.com/ocvcoin/ocv_miner).


Some Online Services
----------------

Block Explorer: [https://explorer.ocvcoin.com/](https://explorer.ocvcoin.com/)

Simple Wallet: [https://wallet.ocvcoin.com/](https://wallet.ocvcoin.com/)


Build From Source
----------------

FOR UBUNTU 20:

```
wget -qO - https://raw.githubusercontent.com/ocvcoin/ocvcoin/master/UBUNTU20_INSTALLER.sh | sudo bash

```

FOR UBUNTU 18:

```
wget -qO - https://raw.githubusercontent.com/ocvcoin/ocvcoin/master/UBUNTU18_INSTALLER.sh | sudo bash

```


Simple Shell Commands
----------------


Start the graphical interface:


```
sudo ocvcoin-qt

```


Create Wallet:

```
sudo ocvcoin-cli createwallet ""

```

Get Your Wallet Address:

```
sudo ocvcoin-cli getnewaddress "" bech32

```
