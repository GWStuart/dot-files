#!/usr/bin/env sh

# All credits to Sofiane Hamlaoui for writing this clever scripts to
# allow for smart resizing of windows in i3
# checkout the GitHub repo below,
# https://gist.github.com/SofianeHamlaoui/52979c6ded181ed02d85ee4dc07e6857

[ -z "$1" ] && echo "No direction provided" && exit 1
distanceStr="2 px or 2 ppt"

moveChoice() {
  i3-msg resize "$1" "$2" "$distanceStr" | grep '"success":true' || \
    i3-msg resize "$3" "$4" "$distanceStr"
}

case $1 in
  up)
    moveChoice grow up shrink down
    ;;
  down)
    moveChoice shrink up grow down
    ;;
  left)
    moveChoice shrink right grow left
    ;;
  right)
    moveChoice grow right shrink left
    ;;
esac
