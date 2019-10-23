#! /bin/bash

# 
#            --------------------------------------------------
#                          Social Fisher (socfish)                
#            --------------------------------------------------
#          Copyright (C) <2019>  <Entynetproject (Ivan Nikolsky)>
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
#
#
#    About Author :   
#    Founder   : Entynetproject (Ivan Nikolsky)
#    Site      : http://entynetproject.simplesite.com/
#    Instagram : @entynetproject 
#    Twitter   : @entynetproject
#    Email     : entynetproject@gmail.com
#

RS="\033[1;31m"
YS="\033[1;33m"
WS="-e \033[1;77m"
CE="\033[0m"

if [[ $EUID -ne 0 ]]
then
   sleep 1
   echo -e "["$RS"*"$CE"] "$RS"This script must be run as "$YS"root"$C"" 1>&2
   sleep 1
   exit
fi

if [[ -d ~/socfish ]]
then
cd ~/socfish/bin
{
cp socfish /bin
cp socfish /usr/local/bin
chmod +x /bin/socfish
chmod +x /usr/local/bin/socfish
cd ~/socfish
} &> /dev/null
sleep 0.5
clear
sleep 0.5
echo
printf "\e[1;92m  ____            \e[0m\e[1;77m _____ _     _     \e[0m\n"
printf "\e[1;92m / ___|  ___   ___\e[0m\e[1;77m|  ___(_)___| |__  \e[0m\n"
printf "\e[1;92m \___ \ / _ \ / __|\e[0m\e[1;77m |_  | / __| '_ \ \e[0m\n"
printf "\e[1;92m  ___) | (_) | (__\e[0m\e[1;77m|  _| | \__ \ | | |\e[0m\n"
printf "\e[1;92m |____/ \___/ \___|\e[0m\e[1;77m_|   |_|___/_| |_|\e[0m\n"
printf "\e[1;92m                       \e[0m\e[1;77m                 \e[0m\n"
printf "\e[1;77m     Developed by Entynetproject                \e[0m\n"
printf "\e[1;77m           (\e[0m\e[1;92mIvan Nikolsky\e[0m\e[1;77m)                \e[0m\n"
echo

if [[ -f /etc/socfish.conf ]]
then

CONF="$( cat /etc/socfish.conf )"
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else 
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
pkg update
pkg install curl
pkg install php
pkg install openssh
pkg install unzip
pkg install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
apt-get update
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
apt-get update
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

else
read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Select your architecture (amd/intel/arm): \e[0m' CONF
if [[ "$CONF" = "" ]]
then
exit
else
if [[ "$CONF" = "arm" ]]
then
read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Is this a single board computer (yes/no)? \e[0m' PI
if [[ "$PI" = "yes" ]]
then
echo "amd" >> /etc/socfish.conf
CONF="amd"
else
echo "$CONF" >> /etc/socfish.conf
fi
fi
fi
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else 
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
pkg update
pkg install curl
pkg install php
pkg install openssh
pkg install unzip
pkg install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
apt-get update
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
apt-get update
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi
fi

else
cd ~
{
git clone https://github.com/entynetproject/socfish.git
cd ~/socfish/bin
cp socfish /bin
cp socfish /usr/local/bin
chmod +x /bin/socfish
chmod +x /usr/local/bin/socfish
cd ~/socfish
} &> /dev/null
sleep 0.5
echo
printf "\e[1;92m  ____            \e[0m\e[1;77m _____ _     _     \e[0m\n"
printf "\e[1;92m / ___|  ___   ___\e[0m\e[1;77m|  ___(_)___| |__  \e[0m\n"
printf "\e[1;92m \___ \ / _ \ / __|\e[0m\e[1;77m |_  | / __| '_ \ \e[0m\n"
printf "\e[1;92m  ___) | (_) | (__\e[0m\e[1;77m|  _| | \__ \ | | |\e[0m\n"
printf "\e[1;92m |____/ \___/ \___|\e[0m\e[1;77m_|   |_|___/_| |_|\e[0m\n"
printf "\e[1;92m                       \e[0m\e[1;77m                 \e[0m\n"
printf "\e[1;77m     Developed by Entynetproject                \e[0m\n"
printf "\e[1;77m           (\e[0m\e[1;92mIvan Nikolsky\e[0m\e[1;77m)                \e[0m\n"
echo

if [[ -f /etc/socfish.conf ]]
then

CONF="$( cat /etc/socfish.conf )"
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else 
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
pkg update
pkg install curl
pkg install php
pkg install openssh
pkg install unzip
pkg install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
apt-get update
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
apt-get update
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

else

read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Select your architecture (amd/intel/arm): \e[0m' CONF
if [[ "$CONF" = "" ]]
then
exit
else
if [[ "$CONF" = "arm" ]]
then
read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Is this a single board computer (yes/no)? \e[0m' PI
if [[ "$PI" = "yes" ]]
then
echo "amd" >> /etc/socfish.conf
CONF="amd"
else
echo "$CONF" >> /etc/socfish.conf
fi
fi
fi
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else 
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
pkg update
pkg install curl
pkg install php
pkg install openssh
pkg install unzip
pkg install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
apt-get update
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
else
echo -e "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Installing dependencies...\e[0m"
apt-get update
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi
fi
fi
