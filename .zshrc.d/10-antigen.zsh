# ------------------------------------------------
# Antigen
# ------------------------------------------------
source $(brew --prefix)/share/antigen/antigen.zsh

# ................................................
# Declare the required bundles
# ................................................
antigen bundle \
  zsh-users/zsh-autosuggestions \
  zsh-users/zsh-completions \
  zsh-users/zsh-syntax-highlighting

# ................................................
# Load the required bundles
# ................................................
antigen apply
