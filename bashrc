#
# ~/.bashrc
#

force_color_prompt=yes

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/.spicetify:$HOME/.local/share/gem/ruby/3.3.0/bin"
export LD_PRELOAD=/usr/lib/libv4l/v4l2convert.so  # for usb webcam

# My custom options
alias suspend="systemctl suspend"
alias open="xdg-open"
alias vim="nvim"

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

# Change bash prompt
# export PS1="[\w]\$ "

# some other scripts
export PATH="$PATH:$HOME/.local/bin"

. "$HOME/.cargo/env"
