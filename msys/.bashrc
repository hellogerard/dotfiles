alias ls='ls -F --color=tty'
alias ll='ls -Fl --color=tty'
alias la='ls -Fa --color=tty'
alias lr='ls -ltrF --color=tty'
alias more='less -eiM'
alias gvim='_gvim'
alias vi='_gvim'
alias vim='_gvim'
alias zf='/c/_work/zend-1.11.3/bin/zf.sh'

function _gvim() { (command gvim "$@" &); }
