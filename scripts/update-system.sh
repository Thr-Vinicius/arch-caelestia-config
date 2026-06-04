#!/bin/bash

echo "Atualizando pacotes oficiais..."
sudo pacman -Syu

echo "Atualizando pacotes AUR..."
yay -Syu

echo "Atualizando Flatpaks..."
flatpak update

echo "Sistema atualizado."

echo "Atualizando repositórios Git..."

for repo in \
  /home/arthur/Anya-cursors \
  /home/arthur/i3-dotfiles \
  /home/arthur/minecraft-plymouth-theme \
  /home/arthur/minegrub-theme \
  /home/arthur/Pictures/krishna-pack
do
  if [ -d "$repo/.git" ]; then
    echo "Atualizando: $repo"
    git -C "$repo" pull
  else
    echo "Ignorado: $repo"
  fi
done
