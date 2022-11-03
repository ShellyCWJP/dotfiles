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

# tmux Backspace
[[ -n "$TMUX" ]] && stty erase '^?'
[[ "$TERM" =~ ^screen ]] && stty erase '^?'
