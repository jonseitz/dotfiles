#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#alias ll='ls --color=auto -lah'
#alias subl='subl3 .'
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
  force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
  else
    color_prompt=
  fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='\[\e[1;92m\]\u@\h\[\e[m\]\[\e[1;31m\]:\[\e[m\]\[\e[1;34m\]\W\[\e[m\]\$ '
else
    PS1='[\u@\h \W\$'
fi

unset color_prompt force_color_prompt

BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/nvim

#auto prepend cd to directory names
shopt -s autocd

#show suggestions on missing commands
if [[ -f /usr/share/dock/pkgfile/command-not-found.bash ]]; then
	source /usr/share/doc/pkgfile/command-not-found.bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [[ -f /etc/bash_completion ]]; then
    /etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

export PATH="$HOME/.cargo/bin:$HOME/.gem/ruby/2.5.0/bin:$PATH"

