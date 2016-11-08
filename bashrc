### Common Usage
export EDITOR=vi
alias a='alias' # Show em.

# Cause I'm sloppy
alias clera='clear'

# Listings
alias ll='ls -la $1'
alias lltr='ls -latr $1'
alias llrt='ls -latr $1'

# Bashings
alias bashit='. ~/.bashrc'
alias vibash='vi ~/.bashrc && . ~/.bashrc'
alias xtitle='. ~/bin/title'

# Pathings
export PATH=$PATH:$HOME/bin:/usr/sbin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:~/pear/bin:/usr/local/bin:~/.nvm/v0.10.41/bin
export PATH=$PATH:/usr/local/Cellar/node/4.1.2/bin:./node_modules/.bin
export GOPATH=/Users/tfalgout/tmp/go
export PATH=$PATH:$GOPATH/bin

# Other
alias fixSsh='export SSH_AUTH_SOCK=`ls -1rt /tmp/ssh-*/agent.* | tail -1`'
alias evalSsh='eval `ssh-agent -s` ssh-add'
alias getAllExt="find . -type f | awk -F'.' '{print $NF}' | sort| uniq -c | sort -g"
OS_NAME=`uname`

alias finddu='find . -type f -exec du {} \; | sort -rn | head -10'

# Doesn't work on Mac.  Just linux
function br() {
    COLS=`tput cols`
    LINE=""
    for (( x=0 ; x<$COLS ; x++ ));  do LINE="$LINE-" ; done
    echo -e '\E[47;0m'"\033[1m$LINE\033[0m"
}

# Space.  Always needing more
function duck() {
        sudo du -xck $1 | sort -n | tail -20;
}
function duckTop() {
        sudo du -xck --max-depth=1 $1 | sort -n | tail -20;
}

# http://vim.spf13.com/#install
alias vi='mvim -v'

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PYTHONPATH="$PYTHONPATH:."
