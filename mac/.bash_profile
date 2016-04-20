# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

function settitle() { echo -n -e "\033]0;$@\007\033]0;$@\007"; }
function cd() { command cd "$@"; settitle $USER@$HOSTNAME:$PWD; }

export PATH=$PATH:$HOME/.npm-packages/bin:$HOME/bin:/usr/local/sbin:/usr/local/heroku/bin
#export APPLICATION_ENV=development
#export NODE_ENV=development
export POW_EXT_DOMAINS=local
export WORK=$HOME/_work
export ARCHIVE=$HOME/_archive
unset USERNAME
settitle $USER@$HOSTNAME:$PWD
users
