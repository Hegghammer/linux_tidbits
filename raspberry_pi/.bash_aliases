# Basics
alias l='exa -l' # requires exa
alias ll='exa -alFh'
alias lll='exa -abghHliS'
alias tr='exa --tree --level=2'
alias tree='exa --tree --level=2 --long'
alias cat='bat' # requires bat
alias fpath='readlink -f'
alias c='clear'
alias e='exit'
alias rb='sudo reboot now'
alias sd='sudo shutdown now'

# Packages
alias up='sudo apt -y update && sudo apt -y full-upgrade'
alias in='sudo apt -y install'
alias rem='sudo apt -y remove'
alias purge='sudo apt-get --purge remove'

# Maintenance
alias rm=trash
alias empty='sudo trash-empty' # requires trash-cli
alias emptydl='cd ~/Downloads && sudo rm -Rf *'

# Inspection
alias d='ncdu'
alias df='df -h'
alias fw='sudo ufw status numbered'
alias temp='/opt/vc/bin/vcgencmd measure_temp'
alias specs='inxi -a'
alias speed='sudo hdparm -Tt'
alias ldisk='sudo lsblk -a'
alias lldisk='sudo fdisk -l'
alias myip='curl https://ipecho.net/plain ; echo'

# Files
alias n='nano'
alias edal='sudo nano ~/.bash_aliases'
alias rc='sudo nano ~/.bashrc'
alias pf='sudo nano ~/.bash_profile'
alias rf=". ~/.bashrc"

# Navigation
alias dl='cd ~/Downloads'
alias rt='cd /'



