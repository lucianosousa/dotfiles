#! /bin/bash

set -e

sudo apt-get install -y ripgrep neovim

dotfiles=(.gemrc .vimrc .bashrc .bash_profile .git-completion.bash .git-prompt.sh .gitignore_global)

for file in "${dotfiles[@]}"
do
  echo "▶︎ Linking ${file}"
  rm -f ~/$file
  ln -s ~/dotfiles/files/$file ~/$file
done

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
