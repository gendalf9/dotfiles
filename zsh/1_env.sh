#
# User env
#
export MYSQL_HOME=/usr/local/mysql
export PYENV_ROOT=/usr/local/var/pyenv
export PATH=$PATH:$MYSQL_HOME/bin:$PYENV_ROOT/bin:.

eval "$(pyenv init -)"

#
# aliases
#
alias vim='/usr/local/bin/vim'

#
# pyenv virtualenv
#
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
