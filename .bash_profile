#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.cargo/bin:$HOME/.gem/ruby/2.5.0/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec /usr/bin/sway
fi
