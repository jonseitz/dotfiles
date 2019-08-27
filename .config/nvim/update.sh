#!/usr/bin/env bash

for d in $HOME/.config/nvim/bundle/*; do 
  (
    if [[ -d $d ]]; then
      cd $d;
      echo "Updating $d...";
      git pull;
    fi
  )
done
