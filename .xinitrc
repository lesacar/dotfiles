nvidia-modprobe &
setxkbmap -option compose:ralt &
xset r rate 225 30 &
dunst &
gnome-keyring-daemon &
randwp &
i3blocks &
picom -b --vsync --config ~/.config/picom/config &
trackpoint &
laptop-reduce-mouse-sens &
# exec dwm
exec i3
