#!/usr/bin/env bash

for d in $HOME/.config/nvim/bundle/*; do 
  (
    cd $d;
    echo "Updating $d...";
    git pull;
  )
done
