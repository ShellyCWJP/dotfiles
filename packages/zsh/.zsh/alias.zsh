# -------------------------
# エイリアス
# -------------------------

# ls
alias ls="eza -G --icons auto"
alias ll="eza -la --icons auto"
alias la="eza -la --icons auto"
alias l1="eza -1 --icons auto"
alias lt="eza -laT --icons auto"
alias l="eza -l --icons auto"

# tree
alias tree="tree -NC" # N: 文字化け対策, C:色をつける

# Git
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias gfrs='git flow release start'
alias gfrf='git flow release finish'
alias gfhs='git flow hotfix start'
alias gfhf='git flow hotfix finish'
alias garchive='git archive --format=zip --prefix=archive/ HEAD `git diff --name-only --diff-filter=AMCR HEAD~1 HEAD` -o archive.zip'

# Git branches
alias gbr='git-branches'

# for safety
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# disable correct
alias yarn='nocorrect yarn'
alias gulp="nocorrect gulp"

# alias
alias sed='gsed'
alias vim='nvim'

# other
alias ide='~/.scripts/ide.sh'
