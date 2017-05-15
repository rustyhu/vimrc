""""" PluginManager

if glob('~/.vim/bundle/Vundle.vim') != ""
  """"" Vundle config
  filetype off                  " required

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  " let Vundle manage Vundle
  Plugin 'VundleVim/Vundle.vim'
  " Keep Plugin commands between vundle#begin/end.
  Plugin 'vim-airline/vim-airline'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  "Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'vim-scripts/taglist.vim'

  call vundle#end()            " required
  filetype plugin indent on    " required
  " To ignore plugin indent changes, instead use:
  "filetype plugin on
  """"" End Vundle config
elseif
  """"" Pathogen config
endif
