#!/usr/bin/bash
# Quick function to make random password of n characters and copy to clipboard
# Place in PATH as `pwgen` or create alias to file location
# Usage: `./pwgen.sh 20` or (if in PATH) `pwgen 20`

tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' < /dev/urandom | 
    head -c $1  | 
    xclip -selection c ; 
    echo "Password of ${1} characters pasted to clipboard."

exit 0
