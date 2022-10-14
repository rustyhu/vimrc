#!/bin/bash

pushd ~/vimrc/bundle/YouCompleteMe
python3 install.py --clang-completer --clangd-completer --rust-completer
# --go-completer  #use vim-go instead
# --ts-completer  #no scenario now
popd
