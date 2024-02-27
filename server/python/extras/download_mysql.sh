#!/bin/bash

HOME=$PWD

echo "Baixando o MySQL ... isso pode demorar vários minutos. Por favor não interrompa o processo."
echo "Downloading MySQL ... this may take several minutes. Please do not interrupt the process."
echo ""
echo ""
cd "$HOME" && curl -C - -L --retry 3 --retry-delay 5 -o mysql-5.7.34-linux-glibc2.12-x86_64.tar.gz https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.34-linux-glibc2.12-x86_64.tar.gz
