#!/bin/bash

# Script for use with i3 to create lock screen with pixellated image of actual screen 
# Copied entirely from https://www.andreafortuna.org/2020/04/09/i3-how-to-make-a-pretty-lock-screen-with-a-four-lines-of-bash-script/

# Install imagemagick
# Place this file and lock.png in $HOME/.config/i3/ and make executable
# Put the following in i3 config: bindsym $mod+l exec $HOME/.config/i3/lockscreen.sh

icon="$HOME/.config/i3/lock.png"
# create a temp file
img=$(mktemp /tmp/XXXXXXXXXX.png)
# Take a screenshot of current desktop
import -window root $img 
# Pixelate the screenshot
convert $img -scale 10% -scale 1000% $img
# Alternatively, blur the screenshot (slow!)
#convert $img -blur 2,5 $img
# Add the lock image
convert $img $icon -gravity center -composite $img
# Run i3lock with custom background
i3lock -u -i $img
# Remove the tmp file
rm $img
