#!/bin/bash

DEST="/home/arthur/Backup-Mensal/BKP's/Configs Caelestia"

mkdir -p "$DEST"

echo "Iniciando backup das configs..."

for pasta in caelestia hypr waybar kitty rofi dunst btop cava; do
    if [ -d "$HOME/.config/$pasta" ]; then
        rm -rf "$DEST/$pasta"
        cp -r "$HOME/.config/$pasta" "$DEST/"
        echo "Backup feito: $pasta"
    else
        echo "Não encontrada: $pasta"
    fi
done

echo "Salvando lista de pacotes..."

pacman -Qqe > "$DEST/pacotes-pacman.txt"

if command -v yay >/dev/null 2>&1; then
    yay -Qqe > "$DEST/pacotes-yay.txt"
fi

if command -v flatpak >/dev/null 2>&1; then
    flatpak list --app --columns=application > "$DEST/flatpaks.txt"
fi

echo "Backup concluído em: $DEST"
