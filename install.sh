#!/bin/bash

# Este script instala los paquetes necesarios y configura el idioma del sistema al idioma ESPAÑOL.

sudo timedatectl set-timezone Europe/Madrid

# Instalación del sistema
otros="zsh zsh-syntax-highlighting"
programas="kitty firefox-esr vim-gui-common keepassxc bspwm sxhkd polybar lsd bat tree xclip xorg feh fastfetch openvpn pavucontrol pulseaudio blueman iwd net-tools btop htop fzf git curl wget redshift rofi glow fish scrot"
sudo apt update -y && sudo apt upgrade -y &&
sudo apt remove --purge vim
sudo apt install $programas

# Instalación de la fuente Mononoki
mkdir -p ./assets/fonts/
cd ./assets/fonts/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Mononoki.zip
unzip Mononoki.zip
sudo mkdir -p /usr/share/fonts/TTF/
sudo mv -v MononokiNerdFont* /usr/share/fonts/TTF/
rm -f LICENSE.txt README.md

# Configuración del idioma del sistema
sudo bash -c "echo 'LANG=es_ES.UTF-8' > /etc/locale.conf"
sudo bash -c "echo 'KEYMAP=es' > /etc/vconsole.conf"
sudo bash -c "echo 'es_ES.UTF-8 UTF-8' > /etc/locale.gen"
sudo locale-gen
