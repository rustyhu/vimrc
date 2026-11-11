""""" PluginManager

if glob('~/vimrc/bundle/Vundle.vim') != ""
  filetype off                  " required

  " set the runtime path to include Vundle and initialize
  set rtp+=~/vimrc/bundle/Vundle.vim
  call vundle#begin('~/vimrc/bundle')
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  Plugin 'VundleVim/Vundle.vim'
  " Basics
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'vim-airline/vim-airline'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'jiangmiao/auto-pairs'
  " Git wrapper
  Plugin 'tpope/vim-fugitive'
  " Programming support of C++, Go, Rust
  Plugin 'octol/vim-cpp-enhanced-highlight'
  Plugin 'fatih/vim-go'
  Plugin 'rust-lang/rust.vim'

  call vundle#end()            " required
endif

filetype plugin indent on    " required
