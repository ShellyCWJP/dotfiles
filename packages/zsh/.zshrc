# -------------------------
# 分割ファイル 読み込み
# -------------------------
ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

# TTY が接続されている場合のみ、インタラクティブ専用ツールを読み込む
if [[ -t 1 ]]; then
  # zsh-autosuggestions
  source ${HOME}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

  # starship
  eval "$(starship init zsh)"

  if (which zprof > /dev/null 2>&1) ;then
    zprof
  fi

  # zsh-completions
  if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
  fi

  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

  # direnv
  eval "$(direnv hook zsh)"
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/kazuto/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kazuto/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kazuto/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kazuto/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kazuto/google-cloud-sdk/completion.zsh.inc'; fi

export BROWSER='function _open(){ echo "\n=== OPEN THIS URL ===\n$1\n=====================\n"; }; _open'

