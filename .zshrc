source ${HOME}/.bash_profile

HISTFILE="${HOME}/.zsh-history"
HISTSIZE=50000
SAVEHIST=10000

setopt prompt_subst
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
unsetopt prompt_sp

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
PROMPT='$(git_ps1)'
