#!/bin/sh
# ~/.xinitrc

xrdb ~/.Xresources
urxvtd -q -f -o
setxkbmap gb
setxkbmap -option compose:lwin
xmodmap ~/.Xmodmap
exec xmonad
