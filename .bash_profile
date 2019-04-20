export PATH="${PATH}:/usr/local/go/bin"
export PATH="${PATH}:/Applications/MacVim.app/Contents/bin"
export PATH="${PATH}:/usr/local/node/bin"
set -o vi
export EDITOR="vim"

function git_ps1() {
  local git_root=$(git rev-parse --show-toplevel --quiet 2> /dev/null)
  if [ "" == "${git_root}" ]
  then
    echo -e "\033[0;92m> \033[0m"
    return
  fi

  local branch_name="$(git rev-parse --abbrev-ref HEAD)"
  local remote="$(git ls-remote --get-url | sed -e "s/^git@github.com://" -e "s/.git$//")"
  echo -e "\033[1;34m(${remote} - ${branch_name}) \033[0m"
}

export PS1="\$(git_ps1)"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
