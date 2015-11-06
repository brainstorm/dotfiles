# Basic

PATH="$PATH:~/bin"

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# OSX
alias removexattrs="chmod -RN . && xattr -c ."
alias ls="ls -G"

# AWS
complete -C aws_completer aws

# Allow the current shell to have boot2docker pointer to a VM
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.102:2376"
export DOCKER_CERT_PATH="/Users/romanvg/.docker/machine/machines/dev"
export DOCKER_MACHINE_NAME="dev"

# Android studio requires this
launchctl setenv STUDIO_JDK /Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Docker
alias docker_rm_all="docker ps -aq --no-trunc | xargs docker rm"

# added by travis gem
[ -f /Users/romanvg/.travis/travis.sh ] && source /Users/romanvg/.travis/travis.sh
