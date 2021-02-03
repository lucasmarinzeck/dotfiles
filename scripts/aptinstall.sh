#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo -e "\e[32m OK \e[0m - ALREADY INSTALLED: ${1} ------------ \n"
  fi
}

install git
install vim 
install curl
install default-jdk
install htop

#For fun
install lolcat


# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y
