# ===============
# .bash_aliases
#
# Thomas Hegghammer
#
# Prerequisites: exa, tree, trash-cli, ncdu, ufw, vcgencmd, inxi, hdparm, xclip, nmap
#
# ===============

# Basics
alias l='exa -l'
alias ll='exa -alFh'
alias lll='exa -abghHliS'
alias tr='exa --tree --level=2'
alias treee='exa --tree --level=2 --long'
alias c='clear'
alias e='exit'
alias rb='reboot'
alias sd='sudo shutdown now'
alias lo='loginctl terminate-user $USER'
alias s='sudo -i'

# Maintenance
alias up='sudo apt update && sudo apt -y full-upgrade'
alias in='sudo apt -y install'
alias rem='sudo apt -y remove'
alias purge='sudo apt --purge remove'
alias emptydl='cd ~/Downloads && sudo rm -Rf *'
alias emptybin='sudo trash-empty'

# Unzip and install
alias untar='tar -xvzf'
alias indeb='sudo dpkg -i'

# Inspection
alias d='ncdu'
alias df='df -h'
alias du='du -h'
alias fw='sudo ufw status numbered'
alias temp='/opt/vc/bin/vcgencmd measure_temp'
alias specs='inxi -a'
alias speed='sudo hdparm -Tt'

# Networking
alias myip='curl https://ipecho.net/plain ; echo'
alias scanw='sudo nmap -sP 192.168.68.0/24' # network-specific
alias scane='sudo nmap -sP 10.0.0.0/24' # network-specific

# Editing
alias n='nano'
alias edal='nano ~/.bash_aliases'
alias edrc='nano ~/.bashrc'
alias edpf='nano ~/.bash_profile'
alias rf=". ~/.bashrc"
alias edi3='nano /home/$USER/.config/i3/config'
alias edpic='nano /home/$USER/.config/picom/picom.conf'
alias edpol='nano /home/$USER/.config/polybar/config'

# Navigation
alias dl='cd ~/Downloads'
alias rt='cd /'
function fp () { readlink -f $1 | xclip; }
# paste with `xclip -o` or Shift+Insert
alias o='xclip -o'
