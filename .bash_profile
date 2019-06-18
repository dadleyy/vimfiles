export PATH="${PATH}:/usr/local/go/bin"
export PATH="${PATH}:/Applications/MacVim.app/Contents/bin"
export PATH="${PATH}:/usr/local/node/bin"
export PATH="${PATH}:${HOME}/.yarn/bin"
set -o vi
export EDITOR="vim"

function git_ps1() {
  local reset=''
  local yellow=''
  local green=''
  local part_delim="·"
  local git_root=$(git rev-parse --show-toplevel --quiet 2> /dev/null)

  if [[ "" == "${git_root}" ]];
  then
    printf "> "
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
  fi

  printf "(${remote}${part_delim}${change_color}${branch_name}${reset}) "
}

# Process grep + kill prompt
function pp() {
  if [[ "" == $1 ]]; then
    echo "must provide a process expression - e.g 'pp ndoe'"
    return
  fi

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

# export PROMPT_COMMAND=git_ps1
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH