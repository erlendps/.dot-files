#!/bin/bash

VUNDLE=~/.vim/bundle/Vundle.vim
# getting all the neccessary repos
if [ ! -d "$HOME/.vim/bundle/" ]; 
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/" ];
then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [ ! -d "$HOME/.tmux/plugins/tpm/" ];
then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# removing zshrc, tmux and vimrc
if [ -f "$HOME/.zshrc" ];
then
    rm "$HOME/.zshrc"
    ln -s "$HOME/.dot-files/.zshrc" "$HOME/.zshrc"
fi

if [ -f "$HOME/.tmux.conf" ];
then
    rm "$HOME/.tmux.conf"
    ln -s "$HOME/.dot-files/.tmux.conf" "$HOME/.tmux.conf"
fi

if [ -f "$HOME/.vimrc" ];
then
    rm "$HOME/.vimrc"
    ln -s "$HOME/.dot-files/.vimrc" "$HOME/.vimrc" 
fi

if [ ! -f "$HOME/.vimrc" ];
then
    ln -s "$HOME/.dot-files/.vimrc" "$HOME/.vimrc" 
fi

if [ ! -f "$HOME/.tmux.conf" ];
then
    ln -s "$HOME/.dot-files/.tmux.conf" "$HOME/.tmux.conf"
fi
