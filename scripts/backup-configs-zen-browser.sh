#!/bin/bash

DEST="/home/arthur/Backup-Mensal/BKP's/Configs Zen Browser"

mkdir -p "$DEST"

echo "Iniciando backup do Zen Browser..."

# Possíveis locais do perfil/config do Zen Browser
POSSIVEIS_PASTAS=(
    "$HOME/.zen"
    "$HOME/.var/app/app.zen_browser.zen/.zen"
    "$HOME/.var/app/io.github.zen_browser.zen/.zen"
    "$HOME/.config/zen"
)

ENCONTROU=0

for pasta in "${POSSIVEIS_PASTAS[@]}"; do
    if [ -d "$pasta" ]; then
        nome_backup=$(echo "$pasta" | sed "s|$HOME/||" | tr "/" "_")
        rm -rf "$DEST/$nome_backup"
        cp -r "$pasta" "$DEST/$nome_backup"
        echo "Backup feito: $pasta"
        ENCONTROU=1
    else
        echo "Não encontrada: $pasta"
    fi
done

# Salva informação útil sobre o Zen instalado
{
    echo "Backup gerado em: $(date)"
    echo
    echo "Zen via pacman/yay:"
    pacman -Qs zen 2>/dev/null
    echo
    echo "Zen via flatpak:"
    flatpak list 2>/dev/null | grep -i zen
} > "$DEST/info-zen-browser.txt"

if [ "$ENCONTROU" -eq 0 ]; then
    echo "Nenhuma pasta do Zen Browser foi encontrada."
else
    echo "Backup concluído em: $DEST"
fi
