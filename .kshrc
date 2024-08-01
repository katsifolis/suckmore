# KSH rc

export EDITOR=$VIM
export FCEDIT=$EDITOR
export PAGER=bat
export LESS='-iMRS -x2'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
export PATH=$PATH:~/.local/bin:/usr/games
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

alias mkdir='mkdir -p'
alias weather='curl http://wttr.in/Europe/Athens'
alias svim="doas vim"
alias svi="doas vi"
alias stc="vi ~/code/suckmore/st/config.h"
alias stm="doas make install -C ~/code/suckmore/st/"
alias dtc="vi ~/code/suckmore/dwm/config.h"
alias dtm="doas make install -C ~/code/suckmore/dwm/"

# PS1 dev
alias psxdoc="zathura --fork ~/code/ultimecia-ha/*.pdf"

_PS1_CLEAR='\[\033[0m\]'
case "$(id -u)" in
	0) _PS1_COLOR='\[\033[1;32m\]' ;;
	*) _PS1_COLOR='\[\033[35m\]'   ;;
esac
PS1='$_PS1_COLOR~>$_PS1_CLEAR '
