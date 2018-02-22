# Path to your oh-my-zsh installation.
export ZSH=/Users/michaelwatts/.oh-my-zsh

. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx)

TERM=xterm-256color

# User configuration
export PATH="/usr/local/bin/:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/System/Library/Frameworks/Python.framework/Versions/2.6/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="$HOME/.rvm/gems/ruby-2.1.5/bin:$PATH"
export PATH="$HOME/.rvm/gems/ruby-2.1.5@global/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"
source ~/.nvm/nvm.sh
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

DEFAULT_USER="michaelwatts"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#   Aliases
#   ---------------------------------------------------------
    alias be='bundle exec'
    alias h='history | grep'
    alias rm='rm -i'
    alias cp='cp -i'
    alias mv='mv -i'
    alias grep='grep --color'
    alias t='tail -f'
    alias e='vim'
    alias e.='vim .'
    alias e~z='vim ~/.zshrc'
    alias ev='vim ~/.vimrc'
    alias whatip='dig +short myip.opendns.com @resolver1.opendns.com'

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
