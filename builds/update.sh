#!/usr/bin/env bash

for d in $(auracle sync | gawk '{print $1}'); do 
  (
    if [[ -d $HOME/builds/$d ]]; then
      cd $HOME/builds/$d;
      echo "Updating $d...";
      git checkout master && git pull && makepkg -sic && git clean -fx;
    fi
  )
done
