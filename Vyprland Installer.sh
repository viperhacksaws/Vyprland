#!/bin/bash
clear

YAY_BASE="librewolf-bin hyprmod breeze adw-gtk-theme gearlever sweet-kde-theme-git oh-my-posh nvim quickshell awww rofi pywal waybar cliphist hypridle hyprlock nwg-look qt6ct"

PACMAN_BASE="kitty fastfetch fish cava hyprland nemo btop timeshift"

YAY_FULL="librewolf-bin fluxer-bin video-trimmer tor-browser-bin qbittorrent gnome-boxes oh-my-posh nvim quickshell awww rofi pywal waybar cliphist hypridle hyprlock nwg-look qt6ct strawberry-git cava prismlauncher-git dolphin-emu-git virtualbox-bin osu-lazer-bin github-desktop-bin"

PACMAN_FULL="kate obsidian obs-studio libreoffice-fresh celluloid kitty fastfetch fish cava hyprland nemo btop steam timeshift"

# main menu

echo -e "\e[33m~~~~~~~~~ Welcome to the Vyprland installer! ~~~~~~~~~\e[0m"
echo ""
echo "This script will install the ML4W hyprland dotfiles, with my personal
configs and apps."
echo "Please select your preferred install below."
echo ""
echo -e "\e[34m1) Base install, only essential apps (Librewolf, Libreoffice suite, etc.)\e[0m"
echo -e "\e[34m2) Full install with all of my apps (Dolphin emulator, art tools, etc.)\e[0m"
echo -e "\e[31m3) Exit\e[0m
"
read -rp "Select [1-3]: " choice

case $choice in
    1)
        INSTALL="BASE"
        ;;

    2)
        INSTALL="FULL"
        ;;
    3)
        clear
        echo "Installer stopped."
        exit 1
        ;;
    *)
        echo "Invalid option." && exit 1
        ;;

esac

# confirm install menu

clear
if [  $INSTALL = "BASE"  ]; then
    echo -e "\e[32m~~~~~~~~~ BASE INSTALL ~~~~~~~~~\e[0m";
else
    echo -e "\e[32m~~~~~~~~~ FULL INSTALL ~~~~~~~~~\e[0m";
fi

echo ""
echo -e "\e[31mWARNING:\e[0m The installer will overwrite any existing dotfiles you have. If you
have anything that you dont want overwritten, please back up those files
before installing"
echo ""
echo "Continue the installation?"
echo ""
sleep 3
echo -e "\e[32m1) Yes\e[0m"
echo -e "\e[31m2) Nevermind...\e[0m
"
read -rp "Select [1-2]: " choice

case $choice in
    1)
        echo "Starting base Vyprland install..."
        ;;
    2)
        clear
        echo "Script stopped." && exit 1
        ;;
    *)
        echo "Invalid option." && exit 1
        ;;
esac

# do the thing

clear
echo -e "\e[33mInstalling Updates...\e[0m"
eos-update

echo -e "\e[33mInstalling AUR packages...\e[0m"
if [ $INSTALL="BASE" ]; then
yay -S --noconfirm --needed \
    $YAY_BASE;
else
yay -S --noconfirm --needed \
    $YAY_FULL
fi

echo -e "\e[33mInstalling pacman packages...\e[0m"
if [ $INSTALL="BASE" ] then
sudo pacman -S --noconfirm --needed \
    $PACMAN_BASE;
else
sudo pacman -S --noconfirm --needed \
    $PACMAN_FULL;
fi

echo -e "\e[33mInstalling the ML4W dotfiles...\e[0m"
    curl -s https://ml4w.com/os/rolling

echo -e "\e[33mRemoving extra packages...\e[0m"
    sudo pacman -R firefox htop nautilus nwg-dock-hyprland --noconfirm --needed --noprogressbar

echo -e "\e[33mDownloading assets and config files...\e[0m"
    git clone https://github.com/viperhacksaws/Vyprland.git
    cd ./Vyprland

echo -e "\e[33mAdding wallpaers and configuration files...\e[0m"
    cd ./assets
    rm -rf ~/.config/ml4w/wallpapers/
    mv ./wallpapers/ ~/.config/ml4w/wallpapers/
    cd ..
    mv ~/dogicon.png ~/.config/ml4w/assets/dogicon.png
    cd ./.config
    mv ~/config.jsonc ~/.config/fastfetch/config.jsonc
    mv ~/kitty.conf ~/.config/kitty/kitty.conf
    cd ./hypr/
    rm -rf ~/.config/hypr/hyprmod/
    mv ./hyprmod ~/.config/hypr/hyprmod/
    mv ~/.config/hypr/hyprmod/
    touch ~/.config/hypr/hyprmod/active_profile

echo -e "\e[33mSetting app defaults...\e[0m"
    echo "5e59155607ab" > ~/.config/hypr/hyprmod/active_profile
    sed -i 's/firefox/librewolf/g' ~/.config/ml4w/settings/browser.sh
    sed -i 's/nautilus/nemo/g' ~/.config/ml4w/settings/filemanager
    sed -i 's/nautilus/nemo/g' ~/.config/ml4w/settings/filemanager
    echo "/ml4w-minimal;/ml4w-minimal" > ~/.config/ml4w/settings/waybar-theme.sh
    gsettings set org.gnome.desktop.interface gtk-theme adw-gtk-theme


echo -e "\e[33mInstallation complete! The system will restart in 10 seconds (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 9 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 8 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 7 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 6 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 5 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 4 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 3 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 2 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 1 second. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear
echo -e "\e[33mInstallation complete! The system will restart in 0 seconds. (CTRL + C to cancel.) Switch to Hyprland from the login screen to boot into the new environment.\e[0m"
sleep 1
clear

