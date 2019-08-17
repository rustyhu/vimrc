""""" PluginManager

if glob('~/vimrc/bundle/Vundle.vim') != ""
  """"" Vundle config
  filetype off                  " required

  " set the runtime path to include Vundle and initialize
  set rtp+=~/vimrc/bundle/Vundle.vim
  call vundle#begin('~/vimrc/bundle')
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  Plugin 'VundleVim/Vundle.vim'
  " Basics
  Plugin 'majutsushi/tagbar'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'vim-airline/vim-airline'
  Plugin 'ctrlpvim/ctrlp.vim'
  " Git wrapper
  Plugin 'tpope/vim-fugitive'
  " Programming support
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'ycm-core/YouCompleteMe'
  " Languages enhancements
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
