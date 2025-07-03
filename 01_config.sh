!/bin/bash
if [ ! -f "../.environBAS" ]; then
    cp config/.environBAS ../.environBAS
fi
source ~/.environBAS
## Github configurations
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global core.editor $EDITOR

