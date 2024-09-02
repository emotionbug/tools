#!/bin/sh

rm -rf tmpbackup
rm -rf tmpbackup.tar.gz
mkdir -p tmpbackup
# GPG Private key
gpg --export-options backup -o tmpbackup/secret.gpg --export-secret-keys
# SSH_Key
cp -R ~/.ssh tmpbackup/
# GitConfig
cp ~/.gitconfig tmpbackup/

# Configs
mkdir -p ~/.config/sops
mkdir -p tmpbackup/.config
cp -R ~/.config/sops tmpbackup/.config

tar -zcvf tmpbackup.tar.gz tmpbackup
