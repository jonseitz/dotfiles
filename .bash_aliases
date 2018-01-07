alias ls='ls --color=auto'
alias ll='ls --color=auto -lAh'
alias subl='subl3 .'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias doom='chocolate-doom -fullscreen'

if [ $(hostname -s) = "seasMBA" ]; then
	xmodmap $HOME/.xmodmap-seasMBA
fi
