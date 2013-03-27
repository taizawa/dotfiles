# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump encode64 pip sublime mysql osx brew gem vi-mode)

source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------------------------
# aliases
# -------------------------------------------------------------------------------
alias _log='ssh 192.168.101.151'
alias _jorin='mosh 54.248.76.178'
alias pjson='python ~/tools/prettyjson.py'
alias fg='~/tools/search.sh'
alias rmls='~/tools/rmls.sh'
alias targz='~/tools/targz.sh'
alias rakumo='python2.5 /usr/local/google_appengine/dev_appserver.py --datastore_path=~/gae_store/dev_appserver.datastore --blobstore_path=~/gae/blobstore/dev_appserver.blobstore --high_replication --host 0.0.0.0 ~/dev/rakumo/'
alias visasq='dev_appserver.py --datastore_path=~/gae_store/visasq/dev_appserver.datastore --blobstore_path=~/gae_store/visasq/blobstore/dev_appserver.blobstore --host 0.0.0.0 ~/dev/visasq/'
alias uvisasq='appcfg.py update -A vis-asq . --no_cookies'

# -------------------------------------------------------------------------------
# symlink
# -------------------------------------------------------------------------------
#ln -s ~/dotfiles/.vimrc ~/.vimrc
#ln -s ~/dotfiles/.zshrc ~/.zshrc


# -------------------------------------------------------------------------------
# at login
# -------------------------------------------------------------------------------
cd ~/dotfiles
git pull git://github.com/taizawa/dotfiles.git
cd ~/tools
git pull git://github.com/taizawa/tools.git
cd ~

# -------------------------------------------------------------------------------
# path
# -------------------------------------------------------------------------------
export PATH=$PATH:/usr/local/google_appengine/
