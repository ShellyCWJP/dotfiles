#!/bin/sh
set -e

cd ~

# Install Homebrew
if [ ! -f /usr/local/bin/brew ]
 then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 else
  echo "Homebrew already installed."
fi

# Install softwares via brew
echo "Installing software & library via Homebrew..."
brew bundle -v --file=./dotfiles/Brewfile

# Install dot files
if [ ! -d ~/.config ]
 then
  echo "Creating ~/.config directory..."
  mkdir ~/.config
fi

echo "Symlinking dotfiles..."
stow -v -d ~/dotfiles/packages -t ~ alacritty zsh nvim tmux git skhd yabai

# NeoVim Plugins
curl -fLo ~/.local/share/nvim/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
