#!/bin/bash

pushd ~/vimrc/bundle/YouCompleteMe
python3 install.py --clang-completer --clangd-completer --go-completer --rust-completer --ts-completer
popd
