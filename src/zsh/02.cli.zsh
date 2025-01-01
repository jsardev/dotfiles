# Z
. $(brew --prefix)/etc/profile.d/z.sh

# AWS Amplify
export PATH="$HOME/.amplify/bin:$PATH"

# Serverless
export PATH="$HOME/.serverless/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Atuin
eval "$(atuin init zsh)"

# fzf
source <(fzf --zsh)