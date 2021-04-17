stty -ixon # Disables Ctrl-S Ctrl-Q
shopt -s autocd 
HISTSIZE=HISTFILESIZE # Infinite bash history
# set completion-prefix-display-length 2
# if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish"  ]]
# then
# 	exec fish
# fi


# bell
b() {
	aplay -q ~/mu/snd_effects/Sys_Do_Start.wav
}


v_dl() {
	youtube-dl $1 -x --audio-format $2 -o "%(artist)s - %(track)s.%(ext)s"
}


# Aliases
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC

export PATH=${DEVKITPRO}/tools/bin:$PATH
export PATH=$PATH:/home/helios/scripts
export PATH=~/.gem/ruby/2.7.0/bin:~/.local/bin:~/.cabal/bin:$PATH
#export RUST_SRC_PATH="~/.rustup/toolchains/stable-x86_64-uknown-linux-gnu/lib/rustlib/src/rust/library"
#export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/library/
export EMAIL=theironbil@gmail.com
export NNN_USE_EDITOR=1
export GOPATH=/home/vik/code/go
export GOBIN=$GOPATH/bin
export EDITOR=vim
export CARP_DIR=~/code/Carp/
export WINEARCH=win32
export LUA_PATH="/home/vik/.luarocks/share/lua/5.1/?.lua;/home/vik/.luarocks/share/lua/5.1/?/init.lua;/usr/share/lua/5.1/?.lua;/usr/share/lua/5.1/?/init.lua"

alias star="telnet towel.blinkenlights.nl"
alias aseprite="/home/vik/Downloads/ase/build/bin/aseprite"
alias goo="go run"
alias autise_me="padsp /home/vik/Downloads/AudioOverloadLinux64/ao"
alias stc="vim ${HOME}/suckmore/st/config.h"
alias stm="cd ${HOME}/suckmore/st/ && sudo make install"
alias dwmc="vim ${HOME}/suckmore/dwm/config.h"
alias dwmm="cd ${HOME}/suckmore/dwm/ && sudo make install"
alias lsc="ls -la | lolcat"
alias up="sudo pacman -Syu;b"
alias neo="neofetch;b&;"
alias sv="sudo vim"
alias get="sudo pacman -Sy"
alias \.="source"
alias gcloud="ssh -i ~/.ssh/id_rsa helios@35.198.65.110"
alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias ls="ls -1 --color"


## Ids are dynamically initialized
#alias padon="xinput set-prop 11 'Device Enabled' 1"
#alias padoff="xinput set-prop 11 'Device Enabled' 0"

export PS1="\[\e[96m\]>\[\e[m\] "
#export PS1="λ "
#export PS1="♘  "
#export PS1="☾"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# THIS CONCERNS LS COLORS
# bd = (BLOCK, BLK)   Block device (buffered) special file
# cd = (CHAR, CHR)    Character device (unbuffered) special file
# di = (DIR)  Directory
# do = (DOOR) [Door][1]
# ex = (EXEC) Executable file (ie. has 'x' set in permissions)
# fi = (FILE) Normal file
# ln = (SYMLINK, LINK, LNK)   Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
# mi = (MISSING)  Non-existent file pointed to by a symbolic link (visible when you type ls -l)
# no = (NORMAL, NORM) Normal (non-filename) text. Global default, although everything should be something
# or = (ORPHAN)   Symbolic link pointing to an orphaned non-existent file
# ow = (OTHER_WRITABLE)   Directory that is other-writable (o+w) and not sticky
# pi = (FIFO, PIPE)   Named pipe (fifo file)
# sg = (SETGID)   File that is setgid (g+s)
# so = (SOCK) Socket file
# st = (STICKY)   Directory with the sticky bit set (+t) and not other-writable
# su = (SETUID)   File that is setuid (u+s)
# tw = (STICKY_OTHER_WRITABLE)    Directory that is sticky and other-writable (+t,o+w)
# *.extension =   Every file using this extension e.g. *.rpm = files with the ending .rpm
export LS_COLORS=$LS_COLORS:'di=1;35:fi=1;94:ex=1;31'
