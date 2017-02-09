#!/bin/bash

# installing YouCompleteMe
cd bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer --system-clang
