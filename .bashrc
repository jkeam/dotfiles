# if using rvm, move this line under all the rvm settings.  rvm selfishly wants to be first.
export PATH="$PATH:/Users/jkeam/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# go
export GOPATH="/Users/jkeam/go"
export PATH="$PATH:$GOPATH/bin"

export EDITOR=vim

# pretty history
export HISTTIMEFORMAT='%F %T '
