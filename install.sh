#!/bin/bash

#            --------------------------------------------------
#                               Social Fisher              
#            --------------------------------------------------
#                  Copyright (C) <2019>  <Entynetproject>
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.

RS="\033[1;31m"
YS="\033[1;33m"
WS="-e \033[1;77m"
CE="\033[0m"

if [[ $EUID -ne 0 ]]
then
   sleep 1
   echo -e ""$RS"["$CE"-"$RS"] This script must be run as root!"$CE"" 1>&2
   sleep 1
   exit
fi

if [[ -d ~/socfish ]]
then
sleep 0
else
cd ~
{
git clone https://github.com/entynetproject/socfish.git
} &> /dev/null
fi

sleep 0.5
clear
sleep 0.5
cd ~/socfish
printf "\033[1;92m  ____            \033[0m\033[1;77m _____ _     _     \033[0m\n"
printf "\033[1;92m / ___|  ___   ___\033[0m\033[1;77m|  ___(_)___| |__  \033[0m\n"
printf "\033[1;92m \___ \ / _ \ / __|\033[0m\033[1;77m |_  | / __| '_ \ \033[0m\n"
printf "\033[1;92m  ___) | (_) | (__\033[0m\033[1;77m|  _| | \__ \ | | |\033[0m\n"
printf "\033[1;92m |____/ \___/ \___|\033[0m\033[1;77m_|   |_|___/_| |_|\033[0m\n"
echo

sleep 1
echo -e "\033[1;77m[\033[0m\033[1;93m*\033[0m\033[1;77m] Installing dependencies...\033[0m"
sleep 1

{
pkg update
pkg -y install git
pkg -y install curl
pkg -y install php
pkg -y install openssh
pkg -y install unzip
pkg -y install wget
apt-get update
apt-get -y install git
apt-get -y install curl
apt-get -y install php
apt-get -y install openssh-server
apt-get -y install unzip
apt-get -y install wget
apk update
apk add git
apk add curl
apk add php
apk add openssh
apk add unzip
apk add wget
pacman -Sy
pacman -S --noconfirm git
pacman -S --noconfirm curl
pacman -S --noconfirm php
pacman -S --noconfirm openssh
pacman -S --noconfirm unzip
pacman -S --noconfirm wget
zypper refresh
zypper install -y git
zypper install -y curl
zypper install -y php
zypper install -y openssh
zypper install -y unzip
zypper install -y wget
yum -y install git
yum -y install curl
yum -y install php
yum -y install openssh
yum -y install unzip
yum -y install wget
dnf -y install git
dnf -y install curl
dnf -y install php
dnf -y install openssh
dnf -y install unzip
dnf -y install wget
eopkg update-repo
eopkg -y install git
eopkg -y install curl
eopkg -y install php
eopkg -y install openssh
eopkg -y install unzip
eopkg -y install wget
xbps-install -S
zbps-install -y git
xbps-install -y curl
xbps-install -y php
xbps-install -y openssh
xbps-install -y unzip
xbps-install -y wget
} &> /dev/null

{
cd ~/socfish/bin
cp socfish /usr/local/bin
chmod +x /usr/local/bin/socfish
cp socfish /bin
chmod +x /bin/socfish
cp socfish /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/socfish
} &> /dev/null

sleep 1
echo -e "\033[1;92m[\033[0m\033[1;77m+\033[0m\033[1;92m] Successfully installed!\033[0m"
sleep 1
