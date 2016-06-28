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
syntax on
" For Airline
set laststatus=2
"" Interior character encoding
set fileencodings=utf-8,ucs-bom,gbk,gb2312,big5,latin1
"" cp950,big5,cp936,gb18030
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
" For vimscript
autocmd FileType vim setlocal et
""""" End Programing

""""" GUI
"default win size for 14" notebook screen
let winpos_h= 700
let winpos_v= 0
let lines_const = 35
let columns_const = 80

if has('gui_running')
    let &lines = lines_const
    let &columns = columns_const
    execute printf("winpos %d %d", winpos_h, winpos_v)
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
""""" EndGUI

""""" Keymaps
""" Rusty keys
nnoremap <space>    <c-f>

""" NERDTree
if has('gui_running')
    " KaiGua() Weapon armming!
    function KaiGua(plus_lines, plus_columns)
        if &lines != a:plus_lines || &columns != a:plus_columns
            let &lines = a:plus_lines
            let &columns = a:plus_columns
        endif
        NERDTreeToggle
    endfunction

    function GuanGua()
        NERDTreeClose
        let &lines = g:lines_const
        let &columns = g:columns_const
        execute printf("winpos %d %d", g:winpos_h, g:winpos_v)
    endfunction

    nnoremap <F2>   :call KaiGua(35, 160)<CR>
    nnoremap <F3>   :call GuanGua()<CR>
else
    nnoremap <F2>   :NERDTreeToggle<CR>
endif

""" Taglist
nnoremap <silent> <F4>  :TlistToggle<CR>
" Taglist Options Setting
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

""""" End Keymaps

""""""""""END CUSTOMIZATION""""""""""
