# Hyprland Dot Files
These are my hyprland dot-files and are what I currently use on my main machine.

For guide on the basic system installation see [here](setup.md)
For instructions on how to apply my custom configurations see below.

# Basic Distro Setup
For a guide on a basic Arch Linux installation see [setup.md](setup.md).

From the guide you can choose whether to install:
- Hyprland (a wayland compositor)
- bspwm (an X11 window manager)

I personally alternate between the two. 

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
