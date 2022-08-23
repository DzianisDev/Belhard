#!/bin/bash
echo "Hello"
mkdir Module6

echo -e "\n\n\n" | ssh-keygen -t ed25519  -N "" -f mypub.key

echo "-----CP .pub in Module6----"

cp mypub.key.pub Module6/

cd Module6

pwd

mkdir alpha beta gamma
echo "------------------------------------------------------------"
chmod 755 alpha
chmod 704 beta
chmod 703 gamma
ls -l
USER=belhard
PASS=belhard
sudo useradd "$USER" && $(echo "$USER:$PASS" | chpasswd)
sudo chown belhard ~/Module6/alpha
sudo chown belhard ~/Module6/gamma
echo "---------------------OWNER and etc--------------------------"
ls -l
