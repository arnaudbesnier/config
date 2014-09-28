# set prompt: ``username@hostname:/directory $ ''
#PS1="[\u@\h:\w] "
PS1="\w:"
case `id -u` in
      0) PS1="${PS1}# ";;
      *) PS1="${PS1}$ ";;
esac

# Font color
export TERM="xterm-color"
PS1="\[\033[01;30m\][\t] \033[01;35m\]\u \033[01;30m\]at \033[01;34m\]\h \033[01;30m\]in \033[01;36m\]\w \033[01;30m\]\\$\[\e[0m\] "

# aliases general ==============================================================

alias ls="ls -G"
alias ll='ls -l'
alias la='ls -la'
alias dir=ll
alias 'cd..'='cd ..'
alias 'sub'='sublime .'
alias 'jsc'='/usr/local/Cellar/v8/3.18.5/bin/v8'

# aliases for Mercurial ========================================================

alias hgc='hg commit -m'

# aliases for paths ============================================================

alias 'app'='cd ~/Dev/shopmium-mobile/Shopmium'
alias 'livemium'='cd ~/Dev/shopmium-mobile/Shopmium/Resources && node server.js'
alias 'server'='cd ~/Dev/shopmium-server'
alias 'mep'='ssh -i ~/ec2/shopmium-deploy.pem ec2-user@ec2-176-34-102-3.eu-west-1.compute.amazonaws.com'
alias 'tw'='cd ~/Dev/trades_watcher'
alias 'website'='cd ~/Dev/personal_website'

# aliases for Shopmium app =====================================================

alias 'tishadow'='tishadow server -p 8080'

# aliases for Shopmium server ==================================================

alias 'configtest'='heroku config -a shopmium-test'
alias 'logstest'='heroku logs -a shopmium-test'
alias 'consoletest'='heroku run console -a shopmium-test'
alias 'migratetest'='heroku run rake db:migrate -a shopmium-test'
alias 'restarttest'='heroku restart -a shopmium-test'
alias 'pgcredentialstest'='heroku pg:credentials -a shopmium-test'

alias 'configdemo'='heroku config -a shopmium-demo'
alias 'logsdemo'='heroku logs -a shopmium-demo'
alias 'consoledemo'='heroku run console -a shopmium-demo'
alias 'migratedemo'='heroku run rake db:migrate -a shopmium-demo'
alias 'restartdemo'='heroku restart -a shopmium-demo'
alias 'pgcredentialsdemo'='heroku pg:credentials -a shopmium-demo'

alias 'configstaging'='heroku config -a shopmium-staging'
alias 'logsstaging'='heroku logs -a shopmium-staging'
alias 'consolestaging'='heroku run console -a shopmium-staging'
alias 'migratestaging'='heroku run rake db:migrate -a shopmium-staging'
alias 'restartstaging'='heroku restart -a shopmium-staging'
alias 'pgcredentialsstaging'='heroku pg:credentials -a shopmium-staging'

alias 'configprod'='heroku config -a shopmium'
alias 'logsprod'='heroku logs -a shopmium'
alias 'consoleprod'='heroku run console -a shopmium'
alias 'migrateprod'='heroku run rake db:migrate -a shopmium'
alias 'restartprod'='heroku restart -a shopmium'
alias 'pgcredentialsprod'='heroku pg:credentials -a shopmium'
alias 'lastdbprod'='heroku pgbackups:url -a shopmium'

# aliases for others server ====================================================

alias 'configtw'='heroku config -a trades-watcher'
alias 'logstw'='heroku logs -a trades-watcher'
alias 'consoletw'='heroku run console -a trades-watcher'
alias 'migratetw'='heroku run rake db:migrate -a trades-watcher'
alias 'restarttw'='heroku restart -a trades-watcher'
#alias 'lastdbtw'="curl -o `$HOME/Downloads/last.dump` `heroku pgbackups:url -a trades-watcher`"

# PATH =========================================================================

# Rbenv
PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# PostgreSQL
PATH="/Library/PostgreSQL/9.3/bin:$PATH"

# Android tools
PATH="$HOME/Dev/android-sdk/platform-tools:$PATH"
PATH="$HOME/Dev/android-sdk/tools:$PATH"

export ANDROID_SDK="$HOME/Dev/android-sdk"
export ANDROID_NDK="$HOME/Dev/android-ndk"

export NDK_CCACHE="/usr/local/bin/ccache"
export NUM_CPUS=4

export MONGO_URL=mongodb://localhost:27017 meteor

# Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"
export PATH
