# .bashrc

# User specific aliases and functions

alias ll='ls -ltr'
alias la='ls -a'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias more='less -EiM'
set -o emacs

export PS1='\[\e[0;33m\][\u@\H \W]\[\e[1;32m\]$(__git_ps1 "(%s)")\[\e[0m\]$ '

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

source ~/.git-completion.bash
