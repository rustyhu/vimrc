""""" PluginManager

if glob('~/.vim/bundle/Vundle.vim') != ""
  """"" Vundle config
  filetype off                  " required

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  Plugin 'VundleVim/Vundle.vim'
  " Keep Plugin commands between vundle#begin/end.
  Plugin 'vim-scripts/taglist.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'vim-airline/vim-airline'
  "Plugin 'ctrlpvim/ctrlp.vim'
  " CPP
  Plugin 'octol/vim-cpp-enhanced-highlight'

  call vundle#end()            " required
  " To ignore plugin indent changes, instead use:
  "filetype plugin on
  """"" End Vundle config

elseif glob('~/.vim/bundle/vim-pathogen') != ""
  """"" Pathogen config
  runtime bundle/vim-pathogen/autoload/pathogen.vim
  execute pathogen#infect()
  """"" End Pathogen config
endif

filetype plugin indent on    " required
