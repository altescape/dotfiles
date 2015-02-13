#   Set Paths
#   --------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="/System/Library/Frameworks/Python.framework/Versions/2.6/bin:/usr/local/mysql/bin:/Users/michaelwatts/.rvm/gems/ruby-2.1.5/bin:$PATH"


#   Set default editor
#   --------------------------------------------------------
    export EDITOR=/usr/local/bin/vim

#   Don’t want to maintain two separate config files for login and non-login shells
#   so this sources the .bashrc file into .bash_profile
    if [ -f ~/.bashrc ]; then
      source ~/.bashrc
    fi

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k


#   Colour
#   ---------------------------------------------------------
    export CLICOLOR=1
    export LSCOLORS=GxFxCxDxBxegedabagaced


#   Aliases
#   ---------------------------------------------------------
    alias be='bundle exec'
    alias hs='history | grep'


#   Functions
#   ---------------------------------------------------------
    function copy() { cat "$@" | pbcopy; }
