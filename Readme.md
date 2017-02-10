# Description

Trying to store configs in a git repo.
I use is a very simple tmux configuration file that basically changes colors and add vim bindings.
I also link some usefull vim plugins that are installed with pathogen.

# Installation
```
# get origin path
ORI=$PWD
# install cmake
sudo apt-get install cmake python-dev
# get all submodules
git clone https://github.com/antoan2/config_files.git
git submodule update --init --recursive
# copy .vim folder
cp -r .vim ~/.vim
# go and install vim plugins
cd ~/.vim
./install.sh
# copy tmux.conf
cp $ORI/.tmux.conf ~/.tmux.conf
# add alias to your bashrc
cp $ORI/.aliases ~/.aliases
# add . ~/.aliases in your ~/.bashrc
echo '. ~/.aliases' >> ~/.bashrc
# add insensitive autocompletion
cp $ORI/.inputrc ~/.inputrc
```
