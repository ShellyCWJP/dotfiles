#!/bin/bash

# Homebrew のインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install mas
brew install apr
brew install apr-util
brew install argon2
brew install aspell
brew install autoconf
brew install bdw-gc
brew install berkeley-db
brew install boost
brew install brotli
brew install c-ares
brew install cert
brew install cmake
brew install cpanminus
brew install curl-openssl
brew install deno
brew install docker
brew install elm
brew install exa
brew install exiftool
brew install fd
brew install fontconfig
brew install freetds
brew install freetype
brew install fzf
brew install gd
brew install gdbm
brew install gettext
brew install ghostscript
brew install git
brew install git-flow
brew install glib
brew install gmp
brew install gnu-sed
brew install gnutls
brew install go
brew install grep
brew install guile
brew install heroku
brew install heroku-node
brew install htop
brew install httpd
brew install icu4c
brew install jansson
brew install jemalloc
brew install jhead
brew install jpeg
brew install krb5
brew install lazygit
brew install libev
brew install libevent
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libiconv
brew install libidn
brew install libidn2
brew install libmetalink
brew install libpng
brew install libpq
brew install libsodium
brew install libssh2
brew install libtasn1
brew install libtermkey
brew install libtiff
brew install libtool
brew install libunistring
brew install libuv
brew install libvirt
brew install libvterm
brew install libyaml
brew install libzip
brew install lua
brew install luajit
brew install mcrypt
brew install mhash
brew install mono
brew install msgpack
brew install mysql
brew install ncurses
brew install neovim
brew install nettle
brew install nghttp2
brew install nodebrew
brew install oniguruma
brew install openjdk
brew install openldap
brew install openssl
brew install p11-kit
brew install pandoc
brew install pcre
brew install pcre2
brew install perl
brew install php
brew install pkg-config
brew install protobuf
brew install pwgen
brew install python
brew install qrencode
brew install readline
brew install rename
brew install rtmpdump
brew install ruby
brew install rust
brew install sqlite
brew install telnet
brew install tidy-html5
brew install tig
brew install tmux
brew install tnftp
brew install tomcat
brew install tree
brew install unbound
brew install unibilium
brew install unixodbc
brew install utf8proc
brew install vim
brew install vimpager
brew install w3m
brew install webalizer
brew install webp
brew install wget
brew install xz
brew install yajl
brew install yarn
brew install zsh
brew install zstd
brew install --cask firefox
brew install --cask google-chrome
brew install --cask xmind
brew install --cask virtualbox
brew install --cask the-unarchiver
brew install --cask iterm2

# BEAR
mas install 1091189122
# Xcode
mas install 497799835
# Microsoft Remote Desktop
mas install 1295203466

# dotfiles をインストール
DOT_FILES=(.zshrc .tmux.conf .gitconfig .gitignore_global .vimrc .vim)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done
