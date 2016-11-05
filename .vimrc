""""""""""CUSTOMIZATION""""""""""
""""" Vundle config
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/taglist.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
""""" End Vundle config

""""" Basics
"" As rm command is dangerous in Unix-like systems, keeping a backup for files is important.
set nobackup
set number
set showcmd
set noundofile
" Show a few lines of context around the cursor
set scrolloff=0
" Search highlight
set hlsearch
set incsearch
" Show statusline always
set laststatus=2
" display completion matches in a status line
set wildmenu
" Interior character encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb2312,big5,latin1
"" cp950,big5,cp936,gb18030
syntax on
""""" End Basics

""""" Programing
" Basic Indent
" options: et: expandtab, sw: shiftwidth, sts: softtabstop, sta: smarttab
set ts=4
set sw=4
"" specific languages
" For C, C++, C#, java
autocmd FileType c,cpp,cs,java setlocal et
" For python: testing smarttab
autocmd FileType python setlocal et sta
" For Lisp
autocmd FileType scheme setlocal ts=2 sw =2 et
" For shell script, vimscript
autocmd FileType sh,vim setlocal ts=2 sw =2 et
" For SQL
autocmd FileType sql setlocal ts=2 sw =2 et
" For XML
autocmd FileType xml setlocal et
""""" End Programing

""""" GUI
"default win size for 14" notebook screen
let g:winpos_h = 700
let g:winpos_v = 0
let g:lines_const = 35
let g:columns_const = 80

if has('gui_running')
  function GUIWinSize()
    let &lines = g:lines_const
    let &columns = g:columns_const
    execute printf("winpos %d %d", g:winpos_h, g:winpos_v)
  endfunction

  " KaiGua() Weapon armming!
  " hotkey binding is at Keymaps region
  function KaiGua(plus_lines, plus_columns)
    if &lines == g:lines_const && &columns == g:columns_const
      let &lines = a:plus_lines
      let &columns = a:plus_columns
      TlistOpen
      NERDTree
    else
      NERDTreeClose
      TlistClose
      let &lines = g:lines_const
      let &columns = g:columns_const
      execute printf("winpos %d %d", g:winpos_h, g:winpos_v)
    endif
  endfunction

  call GUIWinSize()
  " turn off application bars
  "set guioptions-=m
  set guioptions-=T
  " turn off scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
  colorscheme desert
endif

""""" End GUI

""""" Keymaps
" leader key
let mapleader = ","
" use space to scroll down
nnoremap <space>    <c-f>
" keymap for :noh (cancel searching highlight)
nnoremap <leader>n  :noh<CR>

nnoremap <silent> <F2>  :NERDTreeToggle<CR>
nnoremap <silent> <F4>  :TlistToggle<CR>
if has('gui_running')
  nnoremap <silent> <F3>  :call KaiGua(35, 160)<CR>
endif

""""" End Keymaps

""""" Plugins Options
""" NERDTree
" Display bookmarks after start
let NERDTreeShowBookmarks = 1

""" Taglist
" Taglist Options Setting
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1

""""" End Plugins Options


""""""""""END CUSTOMIZATION""""""""""
