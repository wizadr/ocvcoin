What is Ocvcoin?
----------------

It is modified version of bitcoin and it's pow mechanism. Heavy computations are used for resistance to asics. It uses the Open CV library for these computations.

HOW TO MINING WITHOUT INSTALL ANY PROGRAM: [https://youtu.be/6ADEtxtAEyQ](https://youtu.be/6ADEtxtAEyQ)

HOW TO INSTALL OCVCOIN CORE: [https://youtu.be/z3Eh1TgPu78](https://youtu.be/z3Eh1TgPu78)

COMMUNITY: [https://bitcointalk.org/index.php?topic=5364831.0](https://bitcointalk.org/index.php?topic=5364831.0)

DISCORD: [https://discord.gg/hPymgsnxfw](https://discord.gg/hPymgsnxfw)

Dowload
----------------

(ONLY FOR 64 BIT WINDOWS)

Firstly you need to download, install and run the pow server. (pow server must be running as long as the ocvcoin application is running!)

OCVCOIN'S PROOF-OF-WORK SERVER: [ocvcoin_pow_server-1.0.0.0-win64-setup.exe](https://github.com/ocvcoin/pow_server/releases/download/1.0.0.0/ocvcoin_pow_server-1.0.0.0-win64-setup.exe)

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
