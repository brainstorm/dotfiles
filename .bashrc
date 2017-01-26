# Basic

export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export PATH="$PATH:~/bin"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

alias ls="ls --color"

if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# OSX
#alias removexattrs="chmod -RN . && xattr -c ."
#alias ls="ls -G"
# Bash completion
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    source $(brew --prefix)/etc/bash_completion
#fi


# AWS
complete -C aws_completer aws

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# added by travis gem
[ -f /Users/romanvg/.travis/travis.sh ] && source /Users/romanvg/.travis/travis.sh

# linuxbrew
#export PATH="$HOME/.linuxbrew/bin:$PATH"
#export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
#export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
#export CC=${CC:-`which gcc`} && export CXX=${CXX:-`which g++`}
# Cannot be bothered to pass --env=inherit every time
#function brew {
#    ~/.linuxbrew/bin/brew "$@" --env=inherit;
#}

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/lib/go-1.7/bin

# Docker
alias drma="docker ps -aq --no-trunc | xargs docker rm"
alias dkd="docker run -d -P"
alias dki="docker run -t -i -P"
alias dco="docker-compose"
alias dpa="docker ps -a"

# Espressif toolchains for esp8266 and esp32
export PATH=$PATH:$HOME/dev/espressif/crosstool-NG/builds/xtensa-esp32-elf/bin
export PATH=$HOME/dev/espressif/esp-open-sdk/xtensa-lx106-elf/bin:$PATH
export IDF_PATH=~/dev/espressif/esp-idf

# Slurm
alias slurm_template='echo "#!/bin/bash

#SBATCH -n 1
#SBATCH -J
#SBATCH -p defq
#SBATCH -o %J.err
#SBATCH -e %J.out
#SBATCH --time=240:00:00
" > slurm.sh'

# added by Miniconda3 4.2.12 installer
export PATH="/home/romanvg/.miniconda3/bin:$PATH"
