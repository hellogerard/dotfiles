# .bashrc

# User specific aliases and functions

alias ls='ls -FG'
alias ll='ls -FGltr'
alias la='ls -FGa'
alias vi='mvim'
alias vim='mvim'
alias more='less -eiM'
set -o emacs

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export PS1='\[\e[0;33m\][\u@\H \W]\[\e[1;32m\]$(__git_ps1 " (%s)")\[\e[0m\]$ '

source ~/.git-completion.bash
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
