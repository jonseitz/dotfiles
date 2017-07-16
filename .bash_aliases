alias ls='ls --color=auto'
alias ll='ls --color=auto -lah'
alias subl='subl3 .'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
if [ $(hostname -s) = "seasMBA" ]; then
	xmodmap $HOME/.xmodmap-seasMBA
fi
