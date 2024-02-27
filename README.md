# Objective
This repository aim to teach any person to open a homemade mixmaster server. For that we will use the following tools:
- [VirtualBox](https://www.virtualbox.org/)
- [Ubuntu 22.04 Jammy Jellyfish](https://releases.ubuntu.com/22.04/)

## Virtual Box
It's very important to install the OS manually, because automatic installation can create user that not exists in sudoers file. So, we will install the OS manually.

After install OS and open the VM for the first time. Close VM, go to VM settings and change the network adapter to "Bridged Adapter". This is important to open game client in Windows host machine.

## Init the server
Open your virtual machine, press Ctrl+Alt+T to open terminal and run the following commands:
```bash
`sudo apt install --reinstall ca-certificates -y > /dev/null 2>&1 && sudo apt install curl -y > /dev/null 2>&1 && curl -L -o configure.sh "https://raw.githubusercontent.com/mathmpr/mixmaster-server/master/configure.sh" && sudo chmod +x ./configure.sh && sudo ./configure.sh`
```
That is all. If you want to understand what is happening, you can open ./configure.sh and ./manage.sh files and read the content. Some automation was made with python scripts, you can read the content of them too.

Enjoy :)