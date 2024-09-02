#!/bin/sh

tar -zxvf tmpbackup.tar.gz
gpg --import tmpbackup/secret.gpg
cp -Rf tmpbackup/.ssh/* ~/.ssh
cp -f tmpbackup/.gitconfig ~/.gitconfig
# todo: Configs
rm -rf tmpbackup
