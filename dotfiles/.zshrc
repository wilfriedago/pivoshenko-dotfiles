# =============================================================================================
# oh-my-zsh
# =============================================================================================

# path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# set theme
ZSH_THEME=""
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

# list of plugins
plugins=(
  gitfast
  gh
  safe-paste
)

# configure oh-my-zsh's library
source $ZSH/oh-my-zsh.sh

# =============================================================================================
# zplug
# =============================================================================================

export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

source "$HOME/.zplugrc"

# =============================================================================================
# Shell parts
# =============================================================================================

source "$HOME/.shell/.aliases"
source "$HOME/.shell/.completions"
source "$HOME/.shell/.exports"
source "$HOME/.shell/.fzf"
source "$HOME/.shell/.functions"
source "$HOME/.shell/.keybindings"
if [[ -f "$HOME/.shell/.local" ]]; then
  source "$HOME/.shell/.local"
fi

neofetch
