source ~/.profile

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# added by Anaconda 2.1.0 installer
export PATH="/Users/romanvg/.anaconda/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source /Users/romanvg/.iterm2_shell_integration.bash
eval "$(hub alias -s)"
