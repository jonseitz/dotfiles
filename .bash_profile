#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

LOCAL_PATH="$HOME/.bin:$HOME/.local/bin:$HOME/.npm-global/bin:$HOME/.cargo/bin:$HOME/.gem/ruby/2.6.0/bin"

if [[ `which npm 2&> /dev/null` ]]; then
  LOCAL_PATH="$LOCAL_PATH:$(npm config --global get prefix)/bin"
fi

if [[ `which go 2&> /dev/null` ]]; then
  LOCAL_PATH="$LOCAL_PATH:$(go env GOPATH)/bin"
fi

export PATH="$LOCAL_PATH:$PATH"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec /usr/bin/sway
fi
