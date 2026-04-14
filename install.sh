#!/bin/sh

echo "Warning! This will delete your current configs in ~/.config/"
read -p "Type 'yes install' to proceed: " answer

if [ "$answer" = "yes install" ]; then
    echo "Installation started..."

    echo "Copying files..."
    mkdir -p "$HOME/Pictures" && wget "https://github.com/frenzylag777/myfirstrice/blob/main/wall1.jpg?raw=true" -O $HOME/Pictures/wall1.jpg

    rm -rf "$HOME/.config/kitty" "$HOME/.config/hypr" "$HOME/.config/waybar" "$HOME/.config/fastfetch" "$HOME/.config/fontconfig"

    mkdir -p "$HOME/.config/kitty" "$HOME/.config/hypr" "$HOME/.config/waybar" "$HOME/.config/fastfetch" "$HOME/.config/fontconfig"

    cp -r kitty/* "$HOME/.config/kitty/"
    cp -r hypr/* "$HOME/.config/hypr/"
    cp -r fastfetch/* "$HOME/.config/fastfetch/"
    cp -r waybar/* "$HOME/.config/waybar/"
    cp -r fontconfig/* "$HOME/.config/fontconfig"
    cp zshrc "$HOME/.zshrc"

    echo "Files copyed, updating font config..."
    fc-cache -fv

    echo "Success! Dotfiles installed."
else
    echo "Installation cancelled. You must type 'yes install' exactly."
    exit 1
fi
