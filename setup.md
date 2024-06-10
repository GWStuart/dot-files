
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
copy the `.bashrc` file and `Scripts` folder to `~`

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

Within Nvchad there is alot you can configure.
See the cheatsheet with `leader, c, h`

## AUR Helper
Follow the following commands to install `yay`
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

Install spicetify. There is an AUR package but it doesn't seem to work for me.
```
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
```

I'm pretty sure you also need to run the following lines but not entierly sure
```
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
```

From the marketplace install the following:
- An adblocker: adblock
- A custom theme: 

# Discord

For screensharing install aur package: `discord-screenaudio`

## Audio Visualiser
Install aur package `cava`

might need to edit cava config `/.config/cava/config` and uncomment the line `method = pulse`

## Screen Sharing
I found that the best way in general is to pipe the screensharing through OBS. 

install: obs-studio, v4l2loopback-dkms
yay -S xdg-desktop-portal-hyprland-git
https://gist.github.com/PowerBall253/2dea6ddf6974ba4e5d26c3139ffb7580
qt6-wayland

You might want to install the 'linux-headers' and 'dkms' packages from the repos.

# Notification Daemon
Currently using swaync
There are config files for it which I will hopefully include in this repository.

# Other handy software
This is just for other useful software that can be easily installed.
- For mounting external devices, `udisks2`
- For accessing the clipboard, `wl-clipboard`

# NEXT STEPS 
Get a VM going. So i can try install random shit

# Other useful resources
https://wiki.archlinux.org/title/wayland
https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway
