#!/usr/bin/env bash

for d in $HOME/builds/*; do 
  (
    if [[ -d $d ]]; then
      cd $d; 
      echo "cleaning up $d...";
      git checkout master;
      git checkout -- .;
      git clean -fx;
    fi
  )
done
