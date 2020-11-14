# -------------------------------------
# 環境変数
# -------------------------------------

export LC_CTYPE=C
export LANG=C

# vim 風キーバインド
bindkey -v

# SSHで接続した先で日本語が使えるようにする
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# エディタ
export EDITOR=/usr/local/bin/vim

# ページャ
export PAGER=/usr/local/bin/vimpager
export MANPAGER=/usr/local/bin/vimpager

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# node modules
export PATH=$PATH:./node_modules/.bin

# pyenv
export PATH="$HOME/.pyenv/shims:$PATH"

# aws
export PATH="$HOME/Library/Python/3.6/bin:$PATH"

# gnubin
export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

# mjml
export PATH="$PATH:./node_modules/.bin"

# grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"


# -------------------------------------
# zshのオプション
# -------------------------------------

## 補完機能の強化
autoload -U compinit
compinit

## 入力しているコマンド名が間違っている場合にもしかして：を出す。
setopt correct

# 上記の除外
alias gulp="nocorrect gulp"

# ビープを鳴らさない
setopt nobeep

## 色を使う
setopt prompt_subst

## ^Dでログアウトしない。
setopt ignoreeof

## バックグラウンドジョブが終了したらすぐに知らせる。
setopt no_tify

## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups

# 補完
## タブによるファイルの順番切り替えをしない
unsetopt auto_menu

# cd -[tab]で過去のディレクトリにひとっ飛びできるようにする
setopt auto_pushd

# ディレクトリ名を入力するだけでcdできるようにする
setopt auto_cd

# -------------------------------------
# パス
# -------------------------------------

# 重複する要素を自動的に削除
typeset -U path cdpath fpath manpath

path=(
    $HOME/bin(N-/)
        /usr/local/bin(N-/)
            /usr/local/sbin(N-/)
                $path
                )

# -------------------------------------
# プロンプト
# -------------------------------------

autoload -U promptinit; promptinit
autoload -Uz colors; colors
autoload -Uz vcs_info
autoload -Uz is-at-least

# begin VCS
zstyle ":vcs_info:*" enable git svn hg bzr
zstyle ":vcs_info:*" formats "(%s)-[%b]"
zstyle ":vcs_info:*" actionformats "(%s)-[%b|%a]"
zstyle ":vcs_info:(svn|bzr):*" branchformat "%b:r%r"
zstyle ":vcs_info:bzr:*" use-simple true

zstyle ":vcs_info:*" max-exports 6

if is-at-least 4.3.10; then
  zstyle ":vcs_info:git:*" check-for-changes true # commitしていないのをチェック
  zstyle ":vcs_info:git:*" stagedstr "<S>"
  zstyle ":vcs_info:git:*" unstagedstr "<U>"
  zstyle ":vcs_info:git:*" formats "(%b) %c%u"
  zstyle ":vcs_info:git:*" actionformats "(%s)-[%b|%a] %c%u"
fi

function vcs_prompt_info() {
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && echo -n " %{$fg[yellow]%}$vcs_info_msg_0_%f"
}
# end VCS

OK="lol"
NG="pgr"

PROMPT=""
PROMPT+="%(?.%F{green}$OK%f.%F{red}$NG%f) "
PROMPT+="%F{blue}%C%f"
PROMPT+="\$(vcs_prompt_info)"
PROMPT+=" "
PROMPT+="%% "

RPROMPT="[%*]"

# -------------------------------------
# エイリアス
# -------------------------------------

# -n 行数表示, -I バイナリファイル無視, svn関係のファイルを無視
alias grep="grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"

# ls
alias ls="ls -G" # color for darwin
alias l="ls -la"
alias la="ls -la"
alias l1="ls -1"
alias ll="ls -l"

# tree
alias tree="tree -NC" # N: 文字化け対策, C:色をつける

# Git
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias gfrs='git flow release start'
alias gfrf='git flow release finish'
alias gfhs='git flow hotfix start'
alias gfhf='git flow hotfix finish'

alias ga='git archive --format=zip --prefix=archive/ HEAD `git diff --name-only --diff-filter=AMCR HEAD~1 HEAD` -o archive.zip'

# today で今日の日付を呼びだす
alias today='date "+%Y%m%d"'

# disable
alias yarn='nocorrect yarn'

alias sed='gsed'

# -------------------------------------
# キーバインド
# -------------------------------------

# bindkey -e

function cdup() {
     echo
        cd ..
           zle reset-prompt
}
zle -N cdup
bindkey '^K' cdup

bindkey "^R" history-incremental-search-backward



# -------------------------------------
# その他
# -------------------------------------

# cdしたあとで、自動的に ls する
function chpwd() { ls -1 }

# iTerm2のタブ名を変更する
function title {
      echo -ne "\033]0;"$*"\007"
}

# 補完後、メニュー選択モードになり左右キーで移動が出来る
zstyle ':completion:*:default' menu select=2


# backspace,deleteキーを使えるように
stty erase ^H
bindkey "^[[3~" delete-char

# up コマンドで ../ を数字で指定 ex)$ up 3
function up(){ cpath=./; for i in `seq 1 1 $1`; do cpath=$cpath../; done; cd $cpath;}

# zsh-autosuggestions
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# export PATH="/usr/local/opt/php@7.1/bin:$PATH"
# export PATH="/usr/local/opt/php@7.1/sbin:$PATH"


# for Perl
export PERL_CPANM_OPT="--local-lib=~/local/lib/perl5"
export PERL5LIB=$HOME/local/lib/perl5/lib/perl5:$PERL5LIB;

# Escのdelay解消
KEYTIMEOUT=1

# Qrencode
function qr() {
  qrencode -o - $@ | open -f -a preview
}

# fzf
fvim() {
  files=$(git ls-files) &&
  selected_files=$(echo "$files" | fzf -m --preview 'head -100 {}') &&
  vim $selected_files
}

[[ -n "$TMUX" ]] && stty erase '^?'
[[ "$TERM" =~ ^screen ]] && stty erase '^?'
