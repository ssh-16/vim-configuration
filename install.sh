#!/bin/bash
cp -v .vimrc ~
FILE1=$(ls /etc/vimrc)
if  [ $? -eq 0 ]; then
  sudo cp -v vimrc $FILE1
  sudo mkdir -p /etc/vim/
  sudo mkdir -p /etc/vim/bundle
fi
FILE2=$(ls /etc/vim/vimrc)
if [ $? -eq 0 ]; then
  sudo cp -v vimrc $FILE2
fi
DIRS=$(cat dirs.txt)
for DIR in $DIRS; do
  if [ "$DIR" == "vim-pathogen" ]; then
    sudo cp -vr $DIR/autoload /etc/vim/
  fi
  sudo mkdir -p /etc/vim/bundle
  sudo cp -vr $DIR /etc/vim/bundle
done
