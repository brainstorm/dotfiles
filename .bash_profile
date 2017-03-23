if [ -f ~/.profile ]; then
	source ~/.profile
fi

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by Miniconda2 4.3.11 installer
export PATH="/Users/romanvg/.miniconda/bin:$PATH"
