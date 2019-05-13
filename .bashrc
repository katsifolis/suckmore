stty -ixon # Disables Ctrl-S Ctrl-Q
shopt -s autocd 
HISTSIZE=HISTFILESIZE # Infinite bash history

# Aliases
export DEVKITPRO=/opt/devkitpro
export PATH=${DEVKITPRO}/tools/bin:$PATH
export PATH=$PATH:/home/helios/scripts
export EMAIL=theironbil@gmail.com
export NNN_USE_EDITOR=1
export GOPATH=/home/ox/go/
export EDITOR=vim

alias star="telnet towel.blinkenlights.nl"
alias goo="go run"
alias p="python"
alias stc="vim ${HOME}/suckmore/st/config.h"
alias stm="cd ${HOME}/suckmore/st/ && sudo make install"
alias dwmc="vim ${HOME}/suckmore/dwm/config.h"
alias dwmm="cd ${HOME}/suckmore/dwm/ && sudo make install"
alias ls="ls --color"
alias lsc="ls -la | lolcat"
alias up="sudo pacman -Syu"
alias neo="neofetch"
alias v="vim"
alias sv="sudo vim"
alias get="sudo pacman -S"
alias \.="source"
alias gcloud="ssh -i ~/.ssh/id_rsa helios@35.198.65.110"


## Ids are dynamically initialized
#alias padon="xinput set-prop 11 'Device Enabled' 1"
#alias padoff="xinput set-prop 11 'Device Enabled' 0"

export PS1="\[\e[35m\]\A\[\e[m\] \\$ "

## SILLY ##
# Cowsay - Fortune - Figlet - doge 

figlet VADERLICIOUS | lolcat
