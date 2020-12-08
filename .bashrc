stty -ixon # Disables Ctrl-S Ctrl-Q
shopt -s autocd 
HISTSIZE=HISTFILESIZE # Infinite bash history

# bell
b() {
	aplay -q ~/mu/snd_effects/Sys_Do_Start.wav
}


# Aliases
export DEVKITPRO=/opt/devkitpro
export PATH=${DEVKITPRO}/tools/bin:$PATH
export PATH=$PATH:/home/helios/scripts
export PATH=~/.local/bin:$PATH
export EMAIL=theironbil@gmail.com
export NNN_USE_EDITOR=1
export GOPATH=/home/vik/code/go
export GOBIN=$GOPATH/bin
export EDITOR=vim
export CARP_DIR=~/code/Carp/
export WINEARCH=win32

alias star="telnet towel.blinkenlights.nl"
alias aseprite="/home/vik/Downloads/ase/build/bin/aseprite"
alias goo="go run"
alias p="python"
alias autise_me="padsp /home/vik/Downloads/AudioOverloadLinux64/ao"
alias stc="vim ${HOME}/suckmore/st/config.h"
alias stm="cd ${HOME}/suckmore/st/ && sudo make install"
alias dwmc="vim ${HOME}/suckmore/dwm/config.h"
alias dwmm="cd ${HOME}/suckmore/dwm/ && sudo make install"
alias ls="ls --color"
alias lsc="ls -la | lolcat"
alias up="sudo pacman -Syu"
alias neo="neofetch;b&;"
alias v="vim"
alias sv="sudo vim"
alias get="sudo pacman -Sy"
alias \.="source"
alias gcloud="ssh -i ~/.ssh/id_rsa helios@35.198.65.110"


## Ids are dynamically initialized
#alias padon="xinput set-prop 11 'Device Enabled' 1"
#alias padoff="xinput set-prop 11 'Device Enabled' 0"

export PS1="\[\e[35m\]\A\[\e[m\] λ "
#export PS1="λ "
#export PS1="♘  "
#export PS1="☾"

## Notes ##

# Adjusting Trackpoint sensitivity
# echo -n <180-220> > /sys/devices/platform/i8042/serio1/serio2/press_to_select
