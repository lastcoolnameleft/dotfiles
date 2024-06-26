# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/thfalgou/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(
  git
  docker
  common-aliases
  git
  github
  macos
  golang
  helm
  kubectl
  timer
  common-aliases
#  zsh-syntax-highlighting
#  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Enable Passcode
alias eval-ssh='eval "$(ssh-agent -s)"'

# https://itnext.io/boosting-your-kubectl-productivity-b348f7c25712
source <(kubectl completion zsh)

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# K8S
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
function kubectl() { echo "+ kubectl $@">&2; command kubectl $@; }

# Space.  Always needing more
function duck() {
        sudo du -xck $1 | sort -n | tail -20;
}
function duckTop() {
        sudo du -xck --max-depth=1 $1 | sort -n | tail -20;
}

# Quick Copies
alias ssh-copy-key='cat ~/.ssh/id_rsa.pub | pbcopy'

# vi
alias vi='vim'

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/timer
TIMER_FORMAT='[%d]'
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Listings
alias ll='ls -la $1'
alias lltr='ls -latr $1'
alias llrt='ls -latr $1'

# https://github.com/robbyrussell/oh-my-zsh/issues/31#issuecomment-359728582
# unsetopt nomatch

export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# https://medium.com/@jimkang/install-go-on-mac-with-homebrew-5fa421fc55f5
export GOPATH=$HOME/go
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# Aliases 
alias draw.io='/Applications/draw.io.app/Contents/MacOS/draw.io'

alias kcurl="kubectl run curl --image=appropriate/curl -i -t --restart= --rm --command -- sh"
alias kubuntu="kubectl run ubuntu --image=ubuntu -i -t --restart= --rm --command -- bash"

# https://github.com/wfxr/forgit
# . /Users/thfalgou/git/tmp/forgit/forgit.plugin.zsh

export PATH="/Users/thfalgou/.local/bin:$PATH"
