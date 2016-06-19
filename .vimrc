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
set laststatus=2
"" GUI
if has('gui_running')
	"default win size for 14'' notebook screen
	set lines=35 columns=85
	winpos 650 0
	" turn off bars
	"set guioptions-=m
	set guioptions-=T
	" and lines
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R
	colorscheme desert
	"" Interior character encoding
	set fileencodings=utf-8,gbk,gb2312,big5,latin1
	"" ucs-bom,utf-8,cp950,big5,cp936,gb18030
endif
""""" End Basics

""""" Programing
" Basic Indent
" options: et: expandtab, sw: shiftwidth, sts: softtabstop, sta: smarttab
set ts=4
set sw=4
"" specific languages
" For C, C++, C#
autocmd FileType c,cpp,cs setlocal et
" For python, java: testing smarttab
autocmd FileType python,java setlocal et sta
""""" End Programing

""""" Key maps
" Rusty keys
nmap <space>	<c-f>
" NERDTree
if has('gui_running')
	" KaiGua() Weapon armming!
	function KaiGua()
		if &lines != 35 || &columns != 160
			set lines=35 columns=160
		endif
		NERDTreeToggle
	endfunction

	function GuanGua()
		NERDTreeClose
		set lines=35 columns=85
		winpos 650 0
	endfunction

	nmap <F2>	:call KaiGua()<CR>
	nmap <F3>	:call GuanGua()<CR>
else
	nmap <F2>	:NERDTreeToggle<CR>
endif
""""" End Key maps

""""""""""END CUSTOMIZATION""""""""""
