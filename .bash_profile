export PATH="${PATH}:/usr/local/go/bin"
export PATH="${PATH}:/Applications/MacVim.app/Contents/bin"
export PATH="${PATH}:/usr/local/node/bin"
export PATH="${PATH}:${HOME}/.yarn/bin"
set -o vi
export EDITOR="vim"

function git_ps1() {
  local git_root=$(git rev-parse --show-toplevel --quiet 2> /dev/null)

  if [ "" == "${git_root}" ]
  then
    PS1="\033[0;92m> \033[0m"
    return
  fi

  local branch_name="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
  local remotes="$(git remote 2> /dev/null)"
  local remote="$(basename $git_root)"
  local changes=$(git status --porcelain 2> /dev/null)

  if [ "" != "${remotes}" ]
  then
    remote="$(git ls-remote --get-url | sed -e "s/^git@github.com://" -e "s/.git$//")"
  fi

  local change_color="32"

  if [ "" != "$(git status --porcelain 2> /dev/null)" ]
  then
    change_color="35"
  fi

  PS1="\033[1;34m(${remote} - \033[${change_color}m${branch_name}\033[34m) \033[0m"
}

# Process grep + kill prompt
function pp() {
  if [[ "$(pgrep -i "$1")" == "" ]]; then
    echo "nothing to do"
    return 1
  fi

  pgrep -i "$1" | xargs ps -p
  echo $processes
  read -p "Kill? " do_kill

  if [[ $do_kill == "yes" ]]; then
    echo "killing..."
    pgrep -i "$1" | xargs kill -9
    echo "done..."
    return
  fi

  echo "done"
}

export PROMPT_COMMAND=git_ps1
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
