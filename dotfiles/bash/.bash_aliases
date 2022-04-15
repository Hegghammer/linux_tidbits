# ===============
# .bash_aliases
#
# Thomas Hegghammer
#
# Prerequisites:
# sudo apt install glances hdparm htop inxi ncdu nmap speedtest-cli trash-cli tree ufw unzip xclip zip
# wget https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip && unzip exa-linux-x86_64-v0.10.0.zip
# cd exa-linux-x86_64-v0.10.0/bin && sudo mv exa /usr/local/bin
# ===============

# Session management
alias c='clear'
alias rf=". /home/$USER/.bashrc"
alias e='exit'
alias rb='reboot'
alias sd='sudo shutdown now'
alias lgt='loginctl terminate-user $USER'
alias s='sudo -i'
alias sc='sudo systemctl'

# Inspection
alias l='exa -l'
alias ll='exa -alFh'
alias lll='exa -abghHliS'
alias tr='exa --tree --level=2'
alias treee='exa --tree --level=2 --long'
alias d='ncdu'
alias df='df -h'
alias du='du -h'
alias dcount='du -sch ./*'
alias specs='inxi -F'
alias speed='sudo hdparm -Tt'
alias g='glances'
alias h='htop'
alias fl='filelight'

# Maintenance
alias up='sudo apt update && sudo apt -y full-upgrade'
alias ar='sudo apt autoremove'
alias in='sudo apt -y install'
alias purge='sudo apt --purge remove'
alias edl='cd /home/$USER/Downloads && sudo rm -Rf *'
alias ebin='sudo trash-empty'

# Unzip and install
alias untar='tar -xvzf'
alias indeb='sudo dpkg -i'

# Networking
alias fw='sudo ufw status numbered'
alias st='speedtest'
alias myip='curl https://ipecho.net/plain ; echo'
alias scanw='sudo nmap -sP 192.168.68.0/24' # network-specific
alias scane='sudo nmap -sP 10.0.0.0/24' # network-specific
alias ping='ping -c 4'
alias sshconf='sudo vim /etc/ssh/sshd_config'

# Editing
alias n='vim'
alias k='kwrite'
alias edal='vim /home/$USER/.bash_aliases'
alias edrc='vim /home/$USER/.bashrc'
alias edpf='vim /home/$USER/.bash_profile'
alias edz='vim /home/$USER/.zshrc'
alias edi3='vim /home/$USER/.config/i3/config'
alias edpic='vim /home/$USER/.config/picom/picom.conf'
alias edpol='vim /home/$USER/.config/polybar/config'

# Navigation
alias dl='cd /home/$USER/Downloads'
function fp () { readlink -f $1 | xclip; } 
# paste with `xclip -o` or Shift+Insert
alias o='xclip -o'
alias pc='pwd | cpy'
alias cpy='xclip -selection clipboard'

# Various
alias ga='git add'
alias gc='git commit'
alias lo='libreoffice --writer'
alias wt='curl wttr.in' # for weather