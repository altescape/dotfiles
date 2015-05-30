# Path to your oh-my-zsh installation.
export ZSH=/Users/michaelwatts/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx)

TERM=xterm-256color

# User configuration
export PATH="/usr/bin:/usr/local/sbin:/usr/local/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/bin/psql:$PATH"
export PATH="/usr/local/php5-5.5.4-20131001-085153/bin:$PATH"
export PATH="/usr/bin/composer:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"
export PATH="/usr/local/git/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
DEFAULT_USER="michaelwatts"

#   Aliases
#   ---------------------------------------------------------
    alias be='bundle exec'
    alias hs='history | grep --color'
    alias rm='rm -i'
    alias cp='cp -i'
    alias mv='mv -i'


#   Functions
#   ---------------------------------------------------------
    function copy() { cat "$@" | pbcopy; }


#   Options 
#   ---------------------------------------------------------
#
#   This turns of zsh's "helpful" autocorrect feature
    unsetopt correct_all

#   Commands prefixed with a space don't go into history
    setopt HIST_IGNORE_SPACE
