# -----------------------------------------------------------------------------
# ZSH
# -----------------------------------------------------------------------------
# VIM ALL THE THINGS
bindkey -v

# Enable the standard bash shortcut to search history
bindkey "^R" history-incremental-pattern-search-backward

# Make the zsh cache directory.
zsh_cache=${HOME}/.zsh-cache
mkdir -p $zsh_cache

# Paths
export PATH="./bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# Prompt
autoload -U colors && colors

# Magic autocomplete incantation.
autoload -U compinit && compinit

# Stuff for git
parse_git_branch () {
  git branch 2> /dev/null | grep "*" | sed -e 's/* \(.*\)/ (\1)/g'
}

# Set the prompt
set_prompt() {
  export PROMPT="
%{$fg[green]%}%~%{$fg[yellow]%}$(parse_git_branch)%{$reset_color%}
→ "
}

# Set the right-hand side prompt
set_rprompt() {
  if [[ $VIRTUAL_ENV != "" ]]; then
    venv="%{$bg[green]%} %{$fg[black]%}${VIRTUAL_ENV##*/} %{$reset_color%}"
  else
    venv=''
  fi
  export RPROMPT=$venv
}

precmd() {
  set_rprompt
  set_prompt
}
