# Basics
alias l='exa -l' # requires exa
alias ll='exa -alFh'
alias lll='exa -abghHliS'
alias tr='exa --tree --level=2'
alias tree='exa --tree --level=2 --long'
alias cat='batcat' # requires bat
alias fpath='readlink -f'
alias c='clear'
alias e='exit'
alias rb='sudo reboot now'
alias sd='sudo shutdown now'

# Packages
alias up='sudo apt -y update && sudo apt -y full-upgrade'
alias install='sudo apt -y install'
alias remove='sudo apt -y remove'
alias purge='sudo apt-get --purge remove'

# Maintenance
alias rm=trash
alias empty='sudo trash-empty'
alias emptydl='cd ~/Downloads && sudo rm -Rf *'

# Inspection
alias fl='filelight'
alias df='df -h'
alias fw='sudo ufw status numbered'
alias temp='/opt/vc/bin/vcgencmd measure_temp'
alias specs='inxi -a'

# Files
alias n='nano'
alias edal='nano ~/.bash_aliases'
alias rc='nano ~/.bashrc'
alias pf='nano ~/.bash_profile'
alias rf=". ~/.bashrc"

# Navigation
alias dl='cd ~/Downloads'
alias rt='cd /'

function myip(){
   myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
   echo "My WAN/Public IP address: ${myip}"
}

