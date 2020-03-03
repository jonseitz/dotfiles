#!/bin/bash

for drop in `ls $HOME/.config/mutt/muttrc.d/`; do
  echo "source ./muttrc.d/$drop"
done;
