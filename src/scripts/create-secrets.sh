#!/usr/bin/env bash

set -euo pipefail

TPL="$HOME/.dotfiles/src/zsh/04.secrets.zsh.tpl"
OUT="${TPL%.tpl}"

content="$(<"$TPL")"

mapfile -t tokens < <(
  printf '%s' "$content" |
    grep -oE 'bw://[A-Za-z0-9_-]+' |
    sort -u
)

total="${#tokens[@]}"
i=0

for token in "${tokens[@]}"; do
  ((++i))
  printf '%d/%d %s\n' "$i" "$total" "$token"

  id="${token#bw://}"
  secret="$(bw get password "$id")"
  content="${content//"$token"/$secret}"
done

printf '%s' "$content" > "$OUT"
printf 'Wrote %s\n' "$OUT"