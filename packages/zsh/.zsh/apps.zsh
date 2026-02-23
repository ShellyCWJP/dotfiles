# -------------------------
# Apps
# -------------------------

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

# tmux Backspace（TTY接続時のみ）
if [[ -t 0 ]]; then
  [[ -n "$TMUX" ]] && stty erase '^?'
  [[ "$TERM" =~ ^screen ]] && stty erase '^?'
fi
