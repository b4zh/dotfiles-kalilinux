#!/bin/bash

# Una vez instalados los paquetes necesarios este script se encarga de poner en sus sitio los directorios y ficheros de configuración

# .config
mkdir -p ~/.config
cp --recursive --verbose --force ./config/* ~/.config

# Wallpaper
cp --verbose --force ./fehbg ~/.fehbg

# zshrc
bash -c "cat ./zshrc >> ~/.zshrc"

# MyVimRC
git clone https://github.com/b4zh/MyVimRC.git
cp --verbose --force ./MyVimRC/vimrc ~/.vimrc
