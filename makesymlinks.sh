#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfile in ~/dotfiles
# Inspired by: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################  

###### Variables 

dir=~/dotfiles          # dotfiles directory
olddir=~/dotfiles_old    # old dotfiles directory
files="bashrc vim vimrc" # list of files an folders to symlink into the home directory

############################

# Create dotfiles_old in homedir
echo "Creating $olddir for backup of existing dotfiles in ~"
mkdir -p $olddir
echo ".....done"

# Change to dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "......done"

# Move existing dotfiles to olddir and create symlinks
for file in $files; do
	echo "Moving existing dotfiles from ~ to $olddir"
	mv ~/.$file $olddir
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
 
