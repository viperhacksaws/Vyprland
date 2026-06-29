eos-update --needed --noprogressbar
yay -S figlet --noconfirm --needed --noprogressbar

figlet -f smslant "viperhacksaws"
echo "Installing AUR packages..."

yay -S --noconfirm --needed --noprogressbar \
    librewolf-bin vesktop-bin video-trimmer tor-browser-bin qbittorrent gnome-boxes proton-mail proton-vpn-gtk-app hyprmod breeze adw-gtk-theme sweet-kde-theme-git

echo "Installing pacman packages..."
sudo pacman -S --noconfirm --needed --noprogressbar \
    kate lutris obsidian obs-studio libreoffice kitty vlc fastfetch fish cava hyprland nemo btop nano

echo "Installing the ML4W dotfiles..."
bash <(curl -s https://ml4w.com/os/rolling)

echo "Removing extra packages..."
sudo pacman -R firefox htop nautilus nwg-dock-hyprland --noconfirm --needed --noprogressbar

echo "Downloading assets and configs..."
curl -O https://raw.githubusercontent.com/viperhacksaws/Vyprland/refs/heads/main/assets/OSX%20Snow%20Leopard%20Wallpaper.jpg
curl -O https://raw.githubusercontent.com/viperhacksaws/Vyprland/refs/heads/main/assets/dogicon.png
curl -O https://raw.githubusercontent.com/viperhacksaws/Vyprland/refs/heads/main/.config/fastfetch/config.jsonc
curl -O https://raw.githubusercontent.com/viperhacksaws/Vyprland/refs/heads/main/.config/hypr/conf/keybindings/default.lua
curl -O https://raw.githubusercontent.com/viperhacksaws/Vyprland/refs/heads/main/.config/hypr/conf/keybindings/default.lua
curl -O https://raw.githubusercontent.com/viperhacksaws/Vyprland/refs/heads/main/.config/hypr/hyprmod/profiles/5e59155607ab/hyprland-gui.lua
curl -O https://raw.githubusercontent.com/viperhacksaws/Vyprland/refs/heads/main/.config/hypr/hyprmod/profiles/5e59155607ab/meta.json
curl -O https://raw.githubusercontent.com/viperhacksaws/Vyprland/refs/heads/main/.config/kitty/kitty.conf

echo "Deploying configs..."
mv ~/OSX%20Snow%20Leopard%20Wallpaper.jpg ~/OSX\ Snow\ Leopard.jpg
mv ~/OSX\ Snow\ Leopard.jpg ~/.config/ml4w/wallpapers/OSX\ Snow\ Leopard.jpg
mv ~/dogicon.png ~/.config/ml4w/assets/dogicon.png
mv ~/config.jsonc ~/.config/fastfetch/config.jsonc
mv ~/kitty.conf ~/.config/kitty/kitty.conf
mv ~/meta.json ~/.config/hypr/hyprmod/profiles/5e59155607ab/meta.json
mv ~/hyprland-gui.lua ~/.config/hypr/hyprmod/profiles/5e59155607ab/hyprland-gui.lua
touch ~/.config/hypr/hyprmod/active_profile

echo "Setting app defaults..."
echo "5e59155607ab" > ~/.config/hypr/hyprmod/active_profile
sed -i 's/firefox/librewolf/g' ~/.config/ml4w/settings/browser.sh
sed -i 's/nautilus/nemo/g' ~/.config/ml4w/settings/filemanager
sed -i 's/nautilus/nemo/g' ~/.config/ml4w/settings/filemanager
echo "/ml4w-minimal;/ml4w-minimal" > ~/.config/ml4w/settings/waybar-theme.sh


# notes for future me
# figure out how to add all the defaults
# figure out how to automatically apply the sweet theme to kate and the adw gtk theme



echo "Installation complete! Switch to Hyprland from the login screen to boot into the new environment. A system reboot is recommended."

