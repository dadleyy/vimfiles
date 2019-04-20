export PATH="${PATH}:/usr/local/go/bin"
set -o vi
export EDITOR="vim"

function git_ps1() {
  if [ ! -d "./.git" ]
  then
    echo -e "\033[0;92m> \033[0m"
    return
  fi

  local branch_name="$(git rev-parse --abbrev-ref HEAD)"
  local remote="$(git ls-remote --get-url | sed -e "s/^git@github.com://" -e "s/.git$//")"
  echo -e "\033[1;34m(${remote} - ${branch_name}) \033[0m"
}

export PS1="\$(git_ps1)"
