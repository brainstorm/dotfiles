Quick and dirtily install packages from cider to Ubuntu (some will fail)

for pkg in `jq .formulas[] bootstrap.json | sed -e 's/"//g'`; do sudo apt-get install $pkg; done
for pkg in `jq .casks[] bootstrap.json | sed -e 's/"//g'`; do sudo apt-get install $pkg; done
