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

export PATH="${HOME}/src/salsify/flower-power/bin:${PATH}"

# osx applications
export PATH="/Applications/Postgres.app/Contents/Versions/12/bin:${PATH}"

if [[ -d "/Applications/MacVim.app/Contents/bin" ]]; then
  export PATH="/Applications/MacVim.app/Contents/bin:${PATH}"
fi

if [[ -d "${HOME}/src/salsify/kubectl_plugins/exe" ]]; then
  export PATH="${HOME}/src/salsify/kubectl_plugins/exe:${PATH}"
fi

# package/version managers
export PATH="${HOME}/.rbenv/shims:${HOME}/.rbenv/bin:${PATH}"
export PATH="${HOME}/.yarn/bin:${PATH}"
export PATH="${HOME}/.cargo/bin:${PATH}"
export PATH="${HOME}/.config/dadleyy/bin:${PATH}"
export PATH="${PATH}:${HOME}/.elm/versions/active/bin"

export PATH="${HOME}/go/bin:${PATH}"

export GPG_TTY=$(tty)
export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias cls="clear"
alias vimup="vim +PlugUpdate +qall"
alias s="source sal"
alias nvimup="nvim +PlugUpdate +qall"
alias vim='/usr/local/bin/vim'
