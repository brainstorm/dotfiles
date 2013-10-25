#!/bin/sh

export ANSIBLE_HOSTS=$HOME/dev/incf_playbooks/hosts
source $HOME/.csc-openstack.sh

export ARCHFLAGS="-arch x86_64"
export PATH="/usr/local/bin:$PATH:~/bin"

alias ls="ls -G"
alias vim="/opt/homebrew-cask/Caskroom/macvim/*/*/mvim"

# ruby virtualenv
[[ -s "/Users/roman/.rvm/scripts/rvm" ]] && source "/Users/roman/.rvm/scripts/rvm"

# JAVA on MacOSX
#export JAVA_HOME=`/usr/libexec/java_home`

# Powershell for Bash
function _update_ps1() {
       export PS1="$(~/bin/powerline-shell/powerline-shell.py $?)"
    }

export PROMPT_COMMAND="_update_ps1"
