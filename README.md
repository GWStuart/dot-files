# Dot Files
Just a collection of my personal linux dot files.

My current setup consists of:
- Distro: Debian Trixie
- Window Manager: i3

I have the config files for some of my old setups as well including
- Archlinux + Hyprland
- Archlinux + Bspwm

# WindowManager setup
You can find the config files for the support window manager inside the [WindowManager](WindowManager) folder.

This includes customisations for software that only works on that display server (i.e. wayland or X11).

For Hyprland:
- copy the contents of [WindowManager/hyprland](WindowManager/hyprland) to `~/.config/`

For bspwm:
- copy the contents of [WindowManager/bspwm](WindowManager/bspwm) to `~/.config/`

# Other Software Configs
Other configurations that work cross display server are found in the [software](software) folder.

To implement these customisation options:
- Move the [Scipts](software/Scipts) folder to your home directory `~` (or copy the contents if it already exists).
- Copy the contents of the [config](software/config) folder to `~/.config/`
- Move the [bashrc](software/bashrc) file to your home directory and rename it `.bashrc` (with the dot).
- Move the [vim](software/vim) folder to your home directory and rename it `.vim` (with the dot).
