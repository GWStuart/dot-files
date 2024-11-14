#
# ~/.bashrc
#

force_color_prompt=yes

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/will/.spicetify
export LD_PRELOAD=/usr/lib/libv4l/v4l2convert.so  # for usb webcam

# My custom options
alias suspend="systemctl suspend"
alias open="xdg-open"

# My projects
alias pman="~/projects/pman/venv/bin/python ~/projects/pman/pman.py"
alias todo="~/projects/pretty-markdown/venv/bin/python ~/projects/pretty-markdown/md.py ~/Documnets/todo.md"
alias md="~/projects/pretty-markdown/venv/bin/python ~/projects/pretty-markdown/md.py"
alias render="~/projects/ascii-video-player/venv/bin/python ~/projects/ascii-video-player/render.py"
alias colour="~/projects/terminal-colour-picker/venv/bin/python ~/projects/terminal-colour-picker/rgb.py"
alias matrix="~/projects/Screen-Savers/venv/bin/python ~/projects/Screen-Savers/matrix.py"
alias dots="~/projects/Screen-Savers/venv/bin/python ~/projects/Screen-Savers/dots.py"

# Change bash prompt
# export PS1="[\w]\$ "

# some other scripts
export PATH="$PATH:$HOME/.local/bin"

