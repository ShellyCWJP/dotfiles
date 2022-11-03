# -------------------------
# エイリアス
# -------------------------

# ls
alias ls="exa -G --icons"
alias ll="exa -la --icons"
alias la="exa -la --icons"
alias l1="exa -1 --icons"
alias lt="exa -laT --icons"
alias l="exa -l --icons"

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
