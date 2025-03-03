#
# ~/.bashrc
#

force_color_prompt=yes

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Change bash prompt
# export PS1="[\w]\$ "
PS1='[\u@\h \W]\$ '
export LD_PRELOAD=/usr/lib/libv4l/v4l2convert.so  # for usb webcam

# Add certain directories to the path
# Noteably the ~/Script directory is in my path so be careful with this
export PATH="$PATH:$HOME/Scripts:$HOME/.spicetify:$HOME/.local/share/gem/ruby/3.3.0/bin:$HOME/.local/bin"

# My custom options
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias suspend="systemctl suspend"
alias open="xdg-open"
alias vim="nvim"
alias pytree="tree -I '*__pycache__|venv'"

# My projects
alias pman="~/github/pman/venv/bin/python ~/github/pman/pman.py"
alias todo="~/github/pretty-markdown/venv/bin/python ~/github/pretty-markdown/md.py ~/Documnets/todo.md"
alias md="~/github/pretty-markdown/venv/bin/python ~/github/pretty-markdown/md.py"
alias render="~/github/ascii-video-player/venv/bin/python ~/github/ascii-video-player/render.py"
alias colour="~/github/terminal-colour-picker/venv/bin/python ~/github/terminal-colour-picker/rgb.py"
alias matrix="~/github/Screen-Savers/venv/bin/python ~/github/Screen-Savers/matrix.py"
alias dots="~/github/Screen-Savers/venv/bin/python ~/github/Screen-Savers/dots.py"
alias crop="~/Scripts/crop.sh"
alias trim="~/Scripts/trim.sh"

# not sure what this does? Some rust thing i think
. "$HOME/.cargo/env"
