# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

function settitle() { echo -ne "\e]2;$@\a\e]1;$@\a"; }
function cd() { command cd "$@"; settitle $USER@$HOSTNAME:$PWD; }

export PATH=$PATH:$HOME/bin
export TERM=xterm

umask 002
uptime
users
