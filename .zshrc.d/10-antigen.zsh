# ------------------------------------------------
# Antigen
# ------------------------------------------------
source $(brew --prefix)/share/antigen/antigen.zsh

# ................................................
# Declare the required bundles
# ................................................
# Automatically detect .nvmrc files on `cd`
export NVM_AUTO_USE=true
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-syntax-highlighting

# ................................................
# Load the required bundles
# ................................................
antigen apply
