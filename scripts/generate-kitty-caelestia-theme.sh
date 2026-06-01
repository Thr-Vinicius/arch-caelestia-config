#!/bin/bash

SCHEME="$HOME/.config/hypr/scheme/current.conf"
KITTY_THEME="$HOME/.config/kitty/caelestia-theme.conf"

if [ ! -f "$SCHEME" ]; then
    echo "Arquivo de esquema não encontrado: $SCHEME"
    exit 1
fi

get_color() {
    grep "^\$$1 =" "$SCHEME" | awk '{print $3}'
}

background=$(get_color background)
foreground=$(get_color onBackground)
cursor=$(get_color primary)

term0=$(get_color term0)
term1=$(get_color term1)
term2=$(get_color term2)
term3=$(get_color term3)
term4=$(get_color term4)
term5=$(get_color term5)
term6=$(get_color term6)
term7=$(get_color term7)
term8=$(get_color term8)
term9=$(get_color term9)
term10=$(get_color term10)
term11=$(get_color term11)
term12=$(get_color term12)
term13=$(get_color term13)
term14=$(get_color term14)
term15=$(get_color term15)

cat > "$KITTY_THEME" <<EOF
# Tema gerado automaticamente a partir do Caelestia
# Fonte: ~/.config/hypr/scheme/current.conf

background #$background
foreground #$foreground
cursor #$cursor

selection_background #$term8
selection_foreground #$foreground

color0 #$term0
color1 #$term1
color2 #$term2
color3 #$term3
color4 #$term4
color5 #$term5
color6 #$term6
color7 #$term7
color8 #$term8
color9 #$term9
color10 #$term10
color11 #$term11
color12 #$term12
color13 #$term13
color14 #$term14
color15 #$term15
EOF

echo "Tema do Kitty gerado em: $KITTY_THEME"
