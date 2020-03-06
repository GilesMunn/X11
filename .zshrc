export ZSH="~/.oh-my-zsh"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx &> /dev/null
fi

ZSH_THEME="giles"

export EDITOR='nano'

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
