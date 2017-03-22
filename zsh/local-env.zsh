# User env
export MYSQL_HOME=/usr/local/Cellar/mysql56/5.6.32
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PATH:$MYSQL_HOME/bin:$PYENV_ROOT/bin:.

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
alias vim='/usr/local/bin/vim'
alias cat='ccat'
alias mit-scheme="/Applications/MIT-Scheme.app/Contents/Resources/mit-scheme"

#eval $(docker-machine env)
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

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

#export JAVA_6_HOME=`/usr/libexec/java_home -v 1.6`
export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`

function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

function dgscpup() {
  scp -i ~/.ssh/id_rsa_dGate_PC $1 dg@dg.daumkakao.io:deploy@$2
}

function dgscpdown() {
  scp -i ~/.ssh/id_rsa_dGate_PC dg@dg.daumkakao.io:deploy@$1 $2
}


function dgssh() {
  ssh -t dg "$1"
}

setjdk 1.8
