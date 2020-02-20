#!/bin/bash

pushd ~/vimrc/bundle/YouCompleteMe
# drop --go-completer, use vim-go to take care of golang instead.
python3 install.py --clang-completer --clangd-completer --ts-completer --rust-completer
popd
