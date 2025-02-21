# Zsh Variables
export DISABLE_AUTO_UPDATE="true"
export ZSH="$HOME/.oh-my-zsh"

# Theme
# Overridden by starship
export ZSH_THEME=""

# Plugins
plugins=(
    git
    brew
    npm
    yarn
    nvm
    vscode
    starship
)

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"
