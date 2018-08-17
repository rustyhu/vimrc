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
  " Basic equipments
  Plugin 'majutsushi/tagbar'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'vim-airline/vim-airline'
  Plugin 'ctrlpvim/ctrlp.vim'
  " Git wrapper
  Plugin 'tpope/vim-fugitive'
  " PROGRAMMING SUPPORT
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'vim-syntastic/syntastic'
  " Languages
  Plugin 'octol/vim-cpp-enhanced-highlight'
  Plugin 'fatih/vim-go'
  Plugin 'rust-lang/rust.vim'

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
