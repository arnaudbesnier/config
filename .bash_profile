parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ | \1/'
}

# Custom bash prompt via kirsle.net/wizards/ps1.html
# export PS1="\[$(tput setaf 7)\][\t] \[$(tput setaf 5)\]\u \[$(tput setaf 7)\]at \[$(tput setaf 4)\]\h \[$(tput setaf 7)\]in \[$(tput setaf 2)\]\w \[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
export PS1="\[$(tput setaf 7)\][\t] \[$(tput setaf 5)\]\u \[$(tput setaf 7)\]in \[$(tput setaf 2)\]\w\[$(tput setaf 4)\]\$(parse_git_branch) \[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# aliases general ==============================================================

alias ls="ls -G"
alias ll='ls -l'
alias la='ls -la'
alias dir=ll
alias 'cd..'='cd ..'
#alias 'sub'='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias 'jsc'='/usr/local/Cellar/v8/3.18.5/bin/v8'

# aliases for paths ============================================================

alias 'website'='cd ~/Dev/personal_website'
alias 'front'='cd ~/Dev/forestadmin'
alias 'server'='cd ~/Dev/forestadmin-server'
# alias 'server'='cd ~/Dev/ernestcompany'
# alias 'business'='cd ~/Dev/ernest-business\ 2'
#alias 'scraper'='cd ~/Dev/ernest-scraper'

# aliases for GIT ==============================================================

alias 'gitclean'='git branch --merged | grep -v "\*" | grep -v master | grep -v devel | xargs -n 1 git branch -d'
source ~/git-completion.bash

# aliases for DOCKER ===========================================================

alias dc='docker-compose'

# PATH =========================================================================

# Rbenv
PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# PostgreSQL
PATH="/Library/PostgreSQL/9.4/bin:$PATH"

PATH="~/bin:$PATH"

# Android tools
PATH="$HOME/Dev/android-sdk/platform-tools:$PATH"
PATH="$HOME/Dev/android-sdk/tools:$PATH"

export ANDROID_SDK="$HOME/Dev/android-sdk"
export ANDROID_NDK="$HOME/Dev/android-ndk"

export NDK_CCACHE="/usr/local/bin/ccache"
export NUM_CPUS=4

# Maven

export PATH=$PATH:$HOME/apache-maven-3.3.3/bin
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA8_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_75.jdk/Contents/Home

#export MONGO_URL=mongodb://localhost:27017 meteor

export PATH=$PATH:$HOME/.composer/vendor/bin

# Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"
export PATH
export PATH=/usr/local/pcre/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# eval "$(docker-machine env default)"
# alias dc='docker-compose'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
