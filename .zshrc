export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
alias ls="ls --color"

# AWS
alias awslogs="aws logs tail --since 1d --follow $1"

# Docker & Kubernetes
alias drma="docker ps -aq --no-trunc | xargs docker rm"
alias drmi="docker images -qq --no-trunc | xargs docker rmi"
alias dkd="docker run -d -P"
alias dki="docker run -t -i -P"
alias dco="docker-compose"
alias dpa="docker ps -a"

# Reveng
alias binvis="binocle"
export ANDROID_NDK_HOME="/opt/homebrew/share/android-ndk"

ssm() {
    # ssh into the ec2 instance.
    # params: instance_id - should start with 'i-'
    local instance_id
    instance_id="$1"
    aws ssm start-session --target "${instance_id}" \
                          --document-name AWS-StartInteractiveCommand \
                          --parameters command="sudo su - ec2-user"
}

# pdf
pdfmerge() {
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=merged.pdf $* 
}

# Espressif
export ESPFLASH_BAUD=921800
#export ESPFLASH_PORT=/dev/cu.usbserial-134440
#export ESPFLASH_PORT=/dev/cu.usbserial-110
#export ESPFLASH_PORT=/dev/cu.usbserial-134420
#export ESPFLASH_PORT=/dev/cu.usbserial-1320
export ESPFLASH_PORT=/dev/cu.usbserial-110
#alias get_idf='. $HOME/esp/esp-idf/export.sh'

# RiscV Xuantie (Buffalo/Sipeed)
#export PATH=$PATH:$HOME/dev/personal/xuantie-gnu-toolchain/build/xuantie/bin
#export COMX="/dev/cu.usbmodem124301"

# Infineon FX3
#export PATH=$HOME/dev/personal/fx3/sdk/yagarto/bin/:$PATH
#export FX3_INSTALL_PATH=$HOME/dev/personal/fx3/sdk/cyfx3sdk
#export ARMGCC_INSTALL_PATH=$HOME/dev/personal/fx3/sdk/yagarto
#export ARMGCC_VERSION="4.7.2"
#export FX3FWROOT=../../../fw_build/fx3_fw/fx3_build_config.mak

# AVR
#export PATH="/opt/homebrew/opt/avr-gcc@12/bin:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/avr-gcc@12/lib"

# RiscV
export PATH="$PATH:/opt/homebrew/Cellar/riscv-gnu-toolchain/main/bin"
#export PATH="/opt/homebrew/opt/riscv-openocd/bin:$PATH"

# Android
export PATH=$PATH:/Users/rvalls/Library/Android/sdk/build-tools/33.0.0/

# Go
export PATH=$PATH:$HOME/go/bin:$HOME/go/FlameGraph

export PATH="/opt/homebrew/opt/curl/bin:$PATH"

#export IDF_PYTHON_ENV_PATH="/Users/rvalls/.mambaforge/bin"

# Radare2
export PATH=$PATH:$HOME/.local/share/radare2/prefix/bin

# Java (and project Panama hacks)
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-23.jdk/Contents/Home
export PANAMA_JAVA_HOME=$JAVA_HOME
export LIBCLANG_HOME=/Library/Developer/CommandLineTools/usr # (/opt/homebrew/Cellar/llvm/17.0.6_1/ not supported, Makefile broken)
export LIBCLANG_VERSION=$(find /Library/Developer/CommandLineTools/usr/lib/clang -type d -maxdepth 1 -mindepth 1 | parallel basename | sort -V | tail -n 1)
export PATH=$PATH:$HOME/dev/umccr/jextract/build/macosx-aarch64/images/jextract/bin

# Python
alias pip="uv pip"
