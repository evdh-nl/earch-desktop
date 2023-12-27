# EvdH's bashrc.

# Aliases
alias ll="ls -al --color=auto" 
alias homecfg='/usr/bin/git --git-dir=$HOME/.config/homecfg/ --work-tree=$HOME'

# Add own scripts to path
export PATH=$PATH:~/.bin

# Fav. editor
export EDITOR=vim

# Fancy PS1 with git szzl
export PS1='\[\e[0;36m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]$(git-get-current-branch " \e[1;95mb:%s\e[m\]")\[\e[1;36m\]\$\[\e[m\] \[\e[0m\]'

# FZF
. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash

## Use GPG agent as SSH agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

