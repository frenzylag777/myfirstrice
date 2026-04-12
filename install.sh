#!/bin/sh

echo "Warning! This will delete your current configs in ~/.config/"
read -p "Type 'yes install' to proceed: " answer

if [ "$answer" = "yes install" ]; then
    echo "Installation started..."

    mkdir -p "$HOME/Pictures" && wget "https://github.com/frenzylag777/myfirstrice/blob/25576b34a945e2cc2a0224a0ce1e48d6e7e38350/wall1.jpg" -O $HOME/Pictures/wall1.jpg

    rm -rf "$HOME/.config/alacritty" "$HOME/.config/hypr" "$HOME/.config/waybar" "$HOME/.config/fastfetch"

    mkdir -p "$HOME/.config/alacritty" "$HOME/.config/hypr" "$HOME/.config/waybar" "$HOME/.config/fastfetch"

    cp -r alacritty/* "$HOME/.config/alacritty/"
    cp -r hypr/* "$HOME/.config/hypr/"
    cp -r fastfetch/* "$HOME/.config/fastfetch/"
    cp -r waybar/* "$HOME/.config/waybar/"
    cp zshrc "$HOME/.zshrc"

    echo "Success! Dotfiles installed."
else
    echo "Installation cancelled. You must type 'yes install' exactly."
    exit 1
fi
