# if using rvm, move this line under all the rvm settings.  rvm selfishly wants to be first.
export PATH="$PATH:/Users/jonathankeam/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# rvm
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# jenv
# To enable shims and autocompletion add to your profile:
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
export JENV_ROOT="/usr/local/opt/jenv"

# added by travis gem
[ -f /Users/jonathankeam/.travis/travis.sh ] && source /Users/jonathankeam/.travis/travis.sh

# JAVA_HOME
#export JAVA_HOME="$(/usr/libexec/java_home)"
# manually setting it to java 8 bc of play
# Java 8
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home
# Java 7
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export MVN_HOME=/Users/jonathankeam/dev/libraries/apache-maven-3.5.3/bin
export PATH="$PATH:$MVN_HOME" # Add MVN_HOME

# Android
#   adds android to path, (android sdk and android avd)
export ANDROID_HOME="/Users/jonathankeam/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jonathankeam/.nvm/versions/node/v8.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jonathankeam/.nvm/versions/node/v8.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jonathankeam/.nvm/versions/node/v8.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jonathankeam/.nvm/versions/node/v8.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# python pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# hack to get me to run scala 11 for play
export PATH="/usr/local/opt/scala@2.10/bin:$PATH"
export PATH="/usr/local/opt/sbt@0.13/bin:$PATH"

# go
export GOPATH="/Users/jonathankeam/go"
export PATH="$PATH:$GOPATH/bin"

export EDITOR=vim

# pretty history
export HISTTIMEFORMAT='%F %T '

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"
