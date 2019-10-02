alias sshkr='luit -encoding eucKR +osl -- ssh'
alias telkr='luit -encoding eucKR +osl -- telnet'''''

eval "$(pyenv init -)"
eval "$(starship init zsh)"
#eval "$(pyenv virtualenv-init -)"

export JAVA_HOME=$(/usr/libexec/java_home)


function dgscpup() {
  scp -i ~/.ssh/id_rsa_dGate_PC $1 dg@dg.daumkakao.io:deploy@$2
}

function dgscpdown() {
  scp -i ~/.ssh/id_rsa_dGate_PC dg@dg.daumkakao.io:deploy@$1 $2
}


function dgssh() {
  ssh -t dg "$1"
}
