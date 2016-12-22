# Basic

PATH="$PATH:~/bin"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# OSX
alias removexattrs="chmod -RN . && xattr -c ."
alias ls="ls -G"

# AWS
complete -C aws_completer aws

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# added by travis gem
[ -f /Users/romanvg/.travis/travis.sh ] && source /Users/romanvg/.travis/travis.sh

# linuxbrew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export CC=${CC:-`which gcc`} && export CXX=${CXX:-`which g++`}
# Cannot be bothered to pass --env=inherit every time
function brew {
    ~/.linuxbrew/bin/brew "$@" --env=inherit;
}

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Docker
alias drma="docker ps -aq --no-trunc | xargs docker rm"
alias dkd="docker run -d -P"
alias dki="docker run -t -i -P"
alias dco="docker-compose"
alias dpa="docker ps -a"

# Slurm
alias slurm_template='echo "#!/bin/bash

#SBATCH -n 1
#SBATCH -J
#SBATCH -p defq
#SBATCH -o %J.err
#SBATCH -e %J.out
#SBATCH --time=240:00:00
" > slurm.sh'
