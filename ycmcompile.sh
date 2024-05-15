#!/bin/bash

cd ./bundle/YouCompleteMe
python3 install.py --clangd-completer --go-completer
# deprecated: --clang-completer --rust-completer --ts-completer
