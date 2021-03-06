#-------------------------------------------------------------------------------
#
# alias.zsh
# Command-line aliases
#
#-------------------------------------------------------------------------------
# ls
alias lsa="ls -a"
alias ll="ls -l"
alias la="ls -la"
alias lA="ls -lA"
alias ld="ls -ld */" #ls -l | grep '^d'
alias lhd="la -d .*/"
alias lh="la -d .*"

# Profile
alias reloadprofile="source ~/.zshrc"
alias viprofile="vi ~/.zshrc && reloadprofile"
alias editprofile="subl -rw ~/.reloadprofile && reloadprofile"
alias explain="alias | grep"

alias h="history"
alias chrome='open -a "Google Chrome" --args --incognito'
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# Xcode
alias ox='open *.xcodeproj'
alias ow='open *.xcworkspace'

# CocoaPods
alias pi='pod install --no-repo-update'

# Web
alias htstatus="ps awx | grep httpd"
alias gen="bundle exec rake generate"
alias deploy="bundle exec rake deploy"

# burl - https://github.com/visionmedia/burl
alias GET='burl GET'
alias HEAD='burl -I'
alias POST='burl POST'
alias PUT='burl PUT'
alias PATCH='burl PATCH'
alias DELETE='burl DELETE'
alias OPTIONS='burl OPTIONS'

# Boxen
alias boxendir='pushd /opt/boxen/repo'

# Sublime
export SUBLIME_PACKAGES=~/Library/Application\ Support/Sublime\ Text\ 2/Packages
function spack() {
	subl "${SUBLIME_PACKAGES}/User"
}

EDITOR="atom -w"
function e() {
	if [ "$1" == "" ] ; then
	  exec ${EDITOR} .
	else
	  exec ${EDITOR} "$1"
	fi
}

# Marked
function mark() {
    if [ "$1" ] ; then
        open -a Marked.app "$1"
    else
        open -a Marked.app
    fi
}

#-------------------------------------------------------------------------------
#
# Subversion
#
#-------------------------------------------------------------------------------
# alias svn='xcrun svn'
alias showsvn="find . -type d -name .svn"
# alias prunesvn="rm -rf `find . -type d -name .svn`"
