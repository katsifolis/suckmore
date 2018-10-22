# Aliases
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=${DEVKITPRO}/devkitARM
export DEVKITPPC=${DEVKITPRO}/devkitPPC
export PATH=$PATH:/home/helios/scripts
#export EMAIL=theironbil@gmail.com

export PATH=${DEVKITPRO}/tools/bin:$PATH

alias lsc="ls -la | lolcat"
alias ls="ls --color"
alias up="sudo pacman -Syu"
alias neo="neofetch"
alias v="vim"
alias sv="sudo vim"
alias get="sudo pacman -Sy"
alias \.="source"
alias gcloud="ssh -i ~/.ssh/id_rsa helios@35.198.65.110"

## Ids are dynamically initialized
#alias padon="xinput set-prop 11 'Device Enabled' 1"
#alias padoff="xinput set-prop 11 'Device Enabled' 0"

PS1="->"
#(cat ~/.cache/wal/sequences &)
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx


# Bored already
# fortune | cowsay | lolcat -a -s 1000 


