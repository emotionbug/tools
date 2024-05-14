#!/bin/sh

mkdir tmpbackup
gpg --export-options backup -o tmpbackup/secret.gpg --export-secret-keys
cp -R ~/.ssh tmpbackup/
cp .gitconfig tmpbackup/
tar -zcvf tmpbackup.tar.gz tmpbackup
