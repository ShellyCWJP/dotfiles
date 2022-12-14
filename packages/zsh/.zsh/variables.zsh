# -------------------------
# 環境変数
# -------------------------

export LC_CTYPE=C
export LANG=C

# vim 風キーバインド
bindkey -v

# SSHで接続した先で日本語が使えるようにする
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# エディタ
export EDITOR=/usr/local/bin/nvim

# ページャ
export PAGER=/usr/local/bin/nvimpager
export MANAGER=/usr/local/bin/nvimpager

# nodenv
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(nodenv init -)"

# node modules
export PATH="$PATH:./node_modules/.bin"

# pyenv
export PATH="$HOME/.pyenv/shims:$PATH"

# aws
export PATH="$HOME/Library/Python/3.6/bin:$PATH"

# gnubin
export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

# grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
