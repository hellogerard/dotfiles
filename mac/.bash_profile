# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

function settitle() { echo -n -e "\033]0;$@\007\033]0;$@\007"; }
function cd() { command cd "$@"; settitle $USER@$HOSTNAME:$PWD; }

export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/local/opt/ruby/bin:$PATH:$HOME/bin
export POW_EXT_DOMAINS=local
export APPLICATION_ENV=development
unset USERNAME
settitle $USER@$HOSTNAME:$PWD
users
