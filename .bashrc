# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

## http://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1:$PATH"
    fi
}

export PS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m\h\e[0m'; else echo '\e[31m\h\e[0m' ; fi\`:\w\n\$ "

alias tm="tmux attach || tmux new"
alias l='ls -alGh'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


[ -f ~/.bashrc_local ] && . ~/.bashrc_local

cd