# z
. $(brew --prefix)/etc/profile.d/z.sh

# aws amplify
export PATH="$HOME/.amplify/bin:$PATH"

# serverless
export PATH="$HOME/.serverless/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# atuin
eval "$(atuin init zsh --disable-up-arrow)"

# fzf
FZF_CTRL_R_COMMAND="" source <(fzf --zsh)

# bun
[ -s "/Users/jsarnowski/.bun/_bun" ] && source "/Users/jsarnowski/.bun/_bun"