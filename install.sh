#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory

##########

ln -s $dir/bashrc ~/.bashrc
ln -s $dir/vimrc ~/.vimrc
mkdir ~/.vagrant.d
ln -s $dir/vagrant.d/Vagrantfile ~/.vagrant.d/Vagrantfile
ln -s $dir/screenrc ~/.screenrc


git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall > /dev/null

bash $dir/install-screen.sh
