echo "Ejecutando script"
echo "Instalando qtile"

# Instalar dependencias
pacman -S qtile pacman-contrib python python-pip pulseaudio kitty picom --noconfirm 
yay -S nerd-fonts-ubuntu-mono --noconfirm
pip install psutil

cp -r ./kitty/ ~/.config/
cp -r ./qtile/ ~/.config/
cp -r ./picom/ ~/.config/
cp -r ./Wallpapers/ $HOME/Pictures/


echo "Instalando bspwm"

sudo pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin && makepkg -si
paru -S alacritty bspwm sxhkd feh polybar xorg-xsetroot xorg-xbacklight light pamixer dunst rofi ksuperkey nerd-fonts-jetbrains-mono polkit-gnome fm6000 network-manager-applet helix xfce4-power-manager betterlockscreen zsh zsh-autosuggestions zsh-syntax-highlighting oh-my-zsh-git catppuccin-gtk-theme papirus-icon-theme --needed --noconfirm
git clone https://github.com/theCode-Breaker/bspwm-dotfiles.git --depth 1
cd bspwm-dotfiles
cp -R .config/* ~/.config/
chmod -R +x ~/.config/bspwm
cp .zshrc ~
cp .zshrc-personal ~
mkdir ~/.local/bin
cp -R .local/bin/* ~/.local/bin
chmod -R +x ~/.local/bin
betterlockscreen -u ~/.config/bspwm/backgrounds/evening-sky.png
sudo systemctl enable betterlockscreen@$USER.service




