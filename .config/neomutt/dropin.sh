#!/bin/bash

for drop in `ls $HOME/.config/neomutt/neomuttrc.d/`; do
  echo "source ./neomuttrc.d/$drop"
done;
