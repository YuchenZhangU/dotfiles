#!/bin/bash

echo "source ~/dotfiles/.bashrc" >> ~/.bashrc
echo ".bashrc installed ..."

echo "[include]" >> ~/.gitconfig
echo "   path = ~/dotfiles/.gitconfig" >> ~/.gitconfig
echo ".gitconfig installed ..."

echo "source ~/dotfiles/.vimrc" >> ~/.vimrc
echo ".vimrc installed ..."

echo "source ~/dotfiles/.tmux.conf" >> ~/.tmux.conf
echo ".tmux.conf installed ..."

if [ ! -d ~/.ssh ]; then
    cp -r .ssh ~/.ssh
else
    echo ".ssh folder already existed"
fi