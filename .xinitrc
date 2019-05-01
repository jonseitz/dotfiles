#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
userprofile=$HOME/.xprofile
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
i3_base=$HOME/.config/i3/config.base
i3_local=$HOME/.config/i3/config.local
i3_master=$HOME/.config/i3/config


# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -f "$userprofile" ]; then
    . "$userprofile"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
   [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ -f "$i3_base" ] ; then
  cat "$i3_base" > "$i3_master"
  if [ -f "$i3_local" ] ; then
      cat "$i3_local" >> "$i3_master"
  fi
fi

exec /usr/bin/i3
