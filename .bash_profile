#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ `which npm 2&> /dev/null` ]]; then
  NPM_PATH="$(npm config --global get prefix)/bin"
fi

if [[ `which go 2&> /dev/null` ]]; then
  GO_PATH="$(go env GOPATH)/bin"
fi

export PATH="$HOME/.bin:$HOME/.local/bin:$HOME/.npm-global/bin:$HOME/.cargo/bin:$HOME/.gem/ruby/2.6.0/bin:$NPM_PATH:$GO_PATH:$PATH"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec /usr/bin/sway
fi
