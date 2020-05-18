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

#auto prepend cd to directory names
shopt -s autocd

#show suggestions on missing commands
if [[ -f /usr/share/dock/pkgfile/command-not-found.bash ]]; then
	source /usr/share/doc/pkgfile/command-not-found.bash
fi


if [[ -f /etc/bash_completion ]]; then
    /etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -f ~/.bash_vars ]; then
. ~/.bash_vars
fi

if [ -f ~/.bash_private ]; then
. ~/.bash_private
fi

if [ -f ~/.resticrc ]; then
. ~/.resticrc
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

eval base16_seti

export PATH="$HOME/.bin:$HOME/.local/bin:$HOME/.npm-global/bin:$HOME/.cargo/bin:$HOME/.gem/ruby/2.6.0/bin:$(npm config --global get prefix)/bin:$PATH:$(go env GOPATH)/bin:$PATH"

# added by travis gem
[ -f /home/seitz/.travis/travis.sh ] && source /home/seitz/.travis/travis.sh

# added by travis gem
[ -f /home/jseitz/.travis/travis.sh ] && source /home/jseitz/.travis/travis.sh
source /usr/share/nvm/init-nvm.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
