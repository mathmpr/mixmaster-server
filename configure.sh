#!/bin/bash

HOME=$(pwd)
CURRENT_USER="$USER"

printf "Fazendo update no sistema, isso pode demorar um pouco.\\nDoing system update, this may take a while.\\n\\n"
sudo apt-get update > /dev/null
printf "Renovando certificados e openssl.\\nRenewing certificates and openssl.\\n\\n"
sudo apt install --reinstall ca-certificates -y > /dev/null 2>&1
sudo apt install --reinstall openssl -y > /dev/null 2>&1
printf "Instalando dependências, isso pode demorar um pouco.\\nInstalling dependencies, this may take a while.\\n\\n"
sudo apt install python3-pip curl net-tools openssh-server zip unzip -y > /dev/null 2>&1
sudo dpkg --add-architecture i386 > /dev/null 2>&1
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 zlib1g zlib1g:i386 gcc-multilib -y > /dev/null 2>&1
printf "Ativando ssh.\\nActivating ssh.\\n\\n"
sudo systemctl enable ssh --now > /dev/null 2>&1
printf "Desativando firewall.\\nDisabling firewall.\\n\\n"
sudo systemctl stop ufw > /dev/null 2>&1 && sudo ufw disable > /dev/null 2>&1 && sudo systemctl disable ufw > /dev/null 2>&1
printf "Instalando dependências do python.\\nInstalling python dependencies.\\n\\n"
sudo -H pip3 install pexpect > /dev/null 2>&1 && sudo -H pip3 install psutil > /dev/null 2>&1
printf "Fazendo download do repositório. Isso pode demorar vários minutos, visto que o client do jogo já está presente no repositório\\nDownloading repository. This may take several minutes, since the game client is already present in the repository\\n\\n";
curl -C - -L --retry 3 --retry-delay 5 -o repository.zip "https://codeload.github.com/mathmpr/mixmaster-server/zip/refs/heads/master"
printf "\\nExtraindo repositório.\\nExtracting repository.\\n\\n";
unzip -o ./repository.zip -d ./ > /dev/null
sudo rm ./repository.zip
sudo chmod -R 777 ./mixmaster-server-master
sudo cp -rp ./mixmaster-server-master/server ./server
sudo cp -p ./mixmaster-server-master/manage.sh ./
sudo rm -rf ./mixmaster-server-master
sudo chmod +x ./ > /dev/null 2>&1
printf "\\nA partir de agora a execução será finalizada pelo script init.py.\\nFrom now the execution will be finished by the init.py script.\\n\\n"
cd "$HOME" && sudo ./manage.sh -cc