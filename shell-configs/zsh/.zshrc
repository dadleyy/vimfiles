fpath=(${HOME}/.config/zsh/functions $fpath)
autoload -Uz sizethree_prompt compinit
compinit
precmd_functions+=(sizethree_prompt)
setopt prompt_subst
setopt vi

bindkey -v
bindkey '^R' history-incremental-search-backward

export PATH="/usr/local/go/bin:${PATH}"
export PATH="/Applications/MacVim.app/Contents/bin:${PATH}"
export PATH="/usr/local/node/bin:${PATH}"
export PATH="/usr/local/elm/bin:${PATH}"
export PATH="${HOME}/.rbenv/shims:${PATH}"
export PATH="${HOME}/.yarn/bin:${PATH}"
export PATH="${HOME}/go/bin:${PATH}"
export PATH="$HOME/.cargo/bin:${PATH}"
export PATH="$HOME/.config/dadleyy/bin:${PATH}"

export GPG_TTY=$(tty)
export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias vimup="vim +PlugUpdate +qall"
