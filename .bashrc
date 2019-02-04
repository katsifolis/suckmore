# Aliases
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=${DEVKITPRO}/devkitARM
export DEVKITPPC=${DEVKITPRO}/devkitPPC
export PATH=$PATH:/home/helios/scripts
#export EMAIL=theironbil@gmail.com

export NNN_USE_EDITOR=1
export GOPATH=/home/helios/go/


export PATH=${DEVKITPRO}/tools/bin:$PATH
export EDITOR=vim

alias p="python"
alias stc="vim ${HOME}/suckmore/st-0.7/config.h"
alias stm="cd ${HOME}/suckmore/st-0.7/ && sudo make install"
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

PS1=$'\u03bb '
transset-df -a 0.95 1> /dev/null
#(cat ~/.cache/wal/sequences &)
#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx
#fi

# Bored already
# fortune | cowsay | lolcat -a -s 1000 


