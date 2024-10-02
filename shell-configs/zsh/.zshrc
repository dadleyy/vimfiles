fpath=(${HOME}/.config/zsh/functions $fpath)
autoload -Uz sizethree_prompt compinit
compinit
precmd_functions+=(sizethree_prompt)
setopt prompt_subst
setopt vi

setopt inc_append_history
setopt share_history

unsetopt prompt_cr

bindkey -v '^R' history-incremental-search-backward
bindkey -v '^?' backward-delete-char

export PATH="/usr/local/go/bin:${PATH}"
export PATH="/usr/local/bin:${PATH}"
export PATH="${HOME}/.npm-packages/bin:${PATH}"

# osx applications
export PATH="/Applications/Postgres.app/Contents/Versions/12/bin:${PATH}"

# package/version managers
export PATH="${HOME}/.rbenv/shims:${HOME}/.rbenv/bin:${PATH}"
export PATH="${HOME}/.yarn/bin:${PATH}"
export PATH="${HOME}/.cargo/bin:${PATH}"
export PATH="${HOME}/.config/dadleyy/bin:${PATH}"
export PATH="${PATH}:${HOME}/.elm/versions/active/bin"
export PATH="${PATH}:${HOME}/.platformio/penv/bin"

export PATH="${HOME}/go/bin:${PATH}"

export GPG_TTY=$(tty)
export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias vimup="vim +PlugUpdate +qall"
alias s="source sal"
alias nvimup="nvim +PlugUpdate +qall"

alias acc="arduino-cli"

if [[ -d "/usr/local/vim-current" ]]; then
  export PATH="/usr/local/vim-current/bin:${PATH}"
fi

if [[ -f "$HOME/.config/dadleyy/zsh-aliases" ]]; then
  source "$HOME/.config/dadleyy/zsh-aliases"
fi

# if [[ -z `which pio` ]]; then
# else
#   eval "$(_PIO_COMPLETE=zsh_source pio)"
# fi
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

# Added by `rbenv init` on Mon Sep 23 10:22:25 AM EDT 2024
eval "$(rbenv init - --no-rehash zsh)"
