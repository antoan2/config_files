#!/bin/bash
ORI=$PWD
git submodule update --init --recursive
cp -r .vim ~/.vim
cd ~/.vim
./install.sh

cd $ORI
cp .tmux.conf ~/.tmux.conf
cp .inputrc ~/.inputrc
cp .aliases ~/.aliases
echo '. ~/.aliases' >> ~/.bashrc
