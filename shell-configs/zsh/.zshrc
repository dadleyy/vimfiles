fpath=(${HOME}/.config/zsh/functions $fpath)
autoload -Uz vcs_info promptinit

set -o vi
setopt PROMPT_SUBST

export PATH="/usr/local/go/bin:${PATH}"
export PATH="/Applications/MacVim.app/Contents/bin:${PATH}"
export PATH="/usr/local/node/bin:${PATH}"
export PATH="/usr/local/elm/bin:${PATH}"
export PATH="${HOME}/.yarn/bin:${PATH}"
export PATH="${HOME}/go/bin:${PATH}"
export PATH="$HOME/.cargo/bin:${PATH}"

export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias vimup="vim +PlugUpdate +qall"

promptinit
prompt sizethree
