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

set -o vi
setopt PROMPT_SUBST

function precmd() {
  local reset=''
  local yellow=''
  local green=''
  local part_delim=" › "
  local git_root=$(git rev-parse --show-toplevel --quiet 2> /dev/null)

  if [[ "" == "${git_root}" ]];
  then
    PROMPT="> "
    return
  fi

  local branch_name="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
  local remotes="$(git remote 2> /dev/null)"
  local remote="$(basename $git_root)"
  local changes=$(git status --porcelain 2> /dev/null)

  if [[ "" != "${remotes}" ]];
  then
    remote="$(git ls-remote --get-url | sed -e "s/^git@github.com://" -e "s/.git$//")"
  fi

  local change_color=${green}

  if [[ "" != "$(git status --porcelain 2> /dev/null)" ]];
  then
    change_color=${yellow}
    part_delim=" ± "
  fi

  PROMPT="(${remote}${part_delim}${change_color}${branch_name}${reset}) "
}

alias vimup="vim +PlugUpdate +qall"
