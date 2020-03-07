#! /bin/zsh

# Load the .zshrc.d/* config files
setopt extended_glob
for config in ~/.zshrc.d/*[^~]; do
    source $config
done

# Load the local config overrides, if they exist
test -f ~/.zshrc.local && source ~/.zshrc.local
