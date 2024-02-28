# Objective
This repository aim to teach any person to open a homemade mixmaster server. For that we will use the following tools:
- [VirtualBox](https://www.virtualbox.org/)
- [Ubuntu 22.04 Jammy Jellyfish](https://releases.ubuntu.com/22.04/)

## Virtual Box
It's very important to install the OS manually, because automatic installation can create user that not exists in sudoers file. So, we will install the OS manually.

After install OS and open the VM for the first time. Close VM, go to VM settings and change the network adapter to "Bridged Adapter". This is important to open game client in Windows host machine.

## Init the server (one line command)
Open your virtual machine, press Ctrl+Alt+T to open terminal and run the following commands:
```bash
sudo apt install --reinstall ca-certificates -y > /dev/null 2>&1 && sudo apt install curl -y > /dev/null 2>&1 && curl -L -o configure.sh "https://raw.githubusercontent.com/mathmpr/mixmaster-server/master/configure.sh" && sudo chmod +x ./configure.sh && sudo ./configure.sh
```
That is all. If you want to understand what is happening, you can open ./configure.sh and ./manage.sh files and read the content. Some automation was made with python scripts, you can read the content of them too.

Enjoy :)

### Optional
You can configure SSH using the VM ip, user and password of SO that you choose during SO installation. To discover the VM IP you can run at a terminal:
```bash
ifconfig
```
For that I recommend [Bitvise](https://www.bitvise.com/ssh-client-download) or similar.

You can also configure a remote MySQL connection from host machine or LAN machine. During server install you configure a user and password for MySQL. You can use that credentials with the IP that you can obtain with the step above.
For that you can use MySQL clients in host like workbench, navicat, [dbeaver](https://dbeaver.io/download/).

### Nice to know
During the MixMaster development server some different servers, databases e clients was created. For example, the ZoneServer in this example have a bug. When a Hero get level 114 or more, the hero can't obtain any GB when one mob death. Other versions of ZoneServer have this bug fixed. You can find other version os databases, server files and clients in the internet. If you want, you can find. If you want to up an online server, you can.

### More deeper
This repository is a fork from private repository [mixmaster-utils](https://github.com/mathmpr/mixmaster-utils). This repository is minimalist, but have the powerful and simple manager.
In VM press Ctrl+Alt+T to open terminal and run the following commands:
```bash
./manage.sh
```
this will print a menu with options to manage the server. You can start, stop, restart, update, configure and more. You can see the content of this file to understand how it works.