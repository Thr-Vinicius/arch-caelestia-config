#!/bin/bash

echo "Atualizando pacotes oficiais..."
sudo pacman -Syu

echo "Atualizando pacotes AUR..."
yay -Syu

echo "Atualizando Flatpaks..."
flatpak update

echo "Sistema atualizado."
