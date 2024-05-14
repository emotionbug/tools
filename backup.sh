#!/bin/sh

mkdir tmpbackup
# GPG Private key
gpg --export-options backup -o tmpbackup/secret.gpg --export-secret-keys
# SSH_Key
cp -R ~/.ssh tmpbackup/
# GitConfig
cp .gitconfig tmpbackup/
# DevEnv
mkdir -p devdotenv
cp -R devdotenv tmpbackup/

tar -zcvf tmpbackup.tar.gz tmpbackup
