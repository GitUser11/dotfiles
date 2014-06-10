# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export LC_ALL="en_US.UTF-8"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cp gitfast git-extras git-remote-branch jsontools osx pod rbenv ruby sublime sudo vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

#export PATH="/Users/phatblat/bin:/usr/local/bin:/opt/boxen/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/var/rbenv/shims:/usr/local/var/rbenv/versions/1.9.3-p392/bin"
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# rbenv
# if [[ "$HOST" == "oculus.local" ]] ; then
# 	export RBENV_ROOT=/opt/boxen/homebrew/var/rbenv
# else
# 	export RBENV_ROOT=/usr/local/var/rbenv
# fi
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

################################################################################
#
# dotfiles
#
pushd ~/.dotfiles > /dev/null 2>&1

for dir in *
do
    # echo $dir
    # Skip the bin dir
    # [ $dir == "bin" ] && continue
    if [ -d "$dir" ] ; then
        pushd "$dir" > /dev/null
        for file in *.sh
        do
            if [ -f "$file" ]; then
                # echo "Sourcing $file"
                source "$file"
            fi
        done
        popd > /dev/null
    fi
done

popd > /dev/null 2>&1