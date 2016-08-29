# User env
export MYSQL_HOME=/usr/local/Cellar/mysql56/5.6.32
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PATH:$MYSQL_HOME/bin:$PYENV_ROOT/bin:.

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
alias vim='/usr/local/bin/vim'

alias mit-scheme="/Applications/MIT-Scheme.app/Contents/Resources/mit-scheme"

#eval $(docker-machine env)
eval "$(pyenv init -)"
eval "$(pyenv virtualenv init -)"

function setjdk() {
if [ $# -ne 0 ]; then
  removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
  if [ -n "${JAVA_HOME+x}" ]; then
     removeFromPath $JAVA_HOME
  fi
  export JAVA_HOME=`/usr/libexec/java_home -v $@`
  export PATH=$JAVA_HOME/bin:$PATH
  fi
}
function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
setjdk 1.7
