
# Installation

- do grub right with efiboomgr + specify efi-directory
- install microcode, alaritty, wofi, waybar, firefox

# Post first boot
install: `wayland`, `hyprland`
Start hyprland with command: `Hyprland`
Exit with `mod + m`

# First steps
install: `alacritty`, `waybar`, `wofi`
copy the contents of the `config` folder into `~/.config`

## Fonts
install nerd fonts: `ttf-jetbrains-mono-nerd`
install emoji fonts: `noto-fonts-emoji`

## Audio
install: `pipewire`, `wireplumber`
To replace pulse you should also install `pipewire-pulse`

Start and enable the services
```
systemctl --user enable pipewire.service
systemctl --user start pipewire.service

systemctl --user enable pipewire-pulse.service
systemctl --user start pipewire-pulse.service
```

# Other software

## Nvim
Should already have but if not install `neovim`
Install nvchad with command below,
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

There is also an AUR package for nvchad but it doesnt seem to work for me

## AUR Helper
Follow the following command to install `yay`
```
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

It is now installed. You can now also delete the yay folder in your home directory. 

## Firefox
Install package `firefox`
Choose `pipewire` in the options

## Spotify
Install aur package `spotify-wayland`
Install aur package `spicetify-cli`

run the following commands to change write permission
```
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
```

# Audio Visualiser
Install aur package `cava`

might need to edit cava config `/.config/cava/config` and uncomment the line `method = pulse`

# NEXT STEPS 
Get a VM going. So i can try install random shit