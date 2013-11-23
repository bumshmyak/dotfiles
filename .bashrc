# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

alias tm="tmux attach || tmux new"

alias l='ls --color -alh'
eval `dircolors $HOME/.dir_colors`

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

CUSTOM_HOSTNAME=`hostname -s`
[ -f ~/.bashrc_local ] && . ~/.bashrc_local
export PS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m$CUSTOM_HOSTNAME\e[0m'; else echo '\e[31m$CUSTOM_HOSTNAME\e[0m' ; fi\`:\w\n\$ "

cd