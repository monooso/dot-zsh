#! /bin/bash

# Load antigen
source $HOME/antigen.zsh

# Load the .aliases file
test -f ~/.aliases && source ~/.aliases

# Load the .zshrc.d/* config files
for config in ~/.zshrc.d/*.zsh; do
    source $config
done

# Load the local config overrides, if they exist
test -f ~/.zshrc.local && source ~/.zshrc.local

# Load the FZF config, if it exists
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load direnv, if it exists
command -v direnv >/dev/null 2>&1 && eval "$(direnv hook zsh)"

# Apply any antigen bundles
antigen apply
