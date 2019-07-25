#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.cargo/bin:$HOME/.gem/ruby/2.5.0/bin:$PATH"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec /usr/bin/sway
fi
