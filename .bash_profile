if [ -f ~/.profile ]; then
	source ~/.profile
fi

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# added by Anaconda 2.1.0 installer
export PATH="/Users/romanvg/.anaconda/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by Miniconda2 4.2.12 installer
export PATH="/Users/romanvg/.miniconda2/bin:$PATH"
