" Please report any issues to https://github.com/rustyhu/vimrc, thanks a lot!

"""""""""""CUSTOMIZATION""""""""""
set nocompatible

""""" Load plugin manager
"" Load if the file exists
let s:file_pm = glob('~/vimrc/PluginManagerLoad.vim')
if s:file_pm != ""
  exec "source" s:file_pm
endif
""""" End Load plugin manager

""""" Basics
"" As rm command is dangerous in Unix-like systems (rmed files can not recover usually), keeping backups may be useful. But now it's off as too annoying.
set nobackup
set ruler
set number
set relativenumber
set showcmd
set noundofile
" Show a few lines of context around the cursor
set scrolloff=0
set backspace=2
" Search highlight
set hlsearch
set incsearch
" Show statusline always
set laststatus=2
" display completion matches in a status line
set wildmenu
" Interior character encoding
set encoding=utf-8
" other file encodings: cp950,big5,cp936,gb18030
set fileencodings=ucs-bom,utf-8,gbk,gb2312,big5,latin1
" Colorful
syntax on
colorscheme desert
""""" End Basics

""""" Programing
"" Basic indentation
" options: et: expandtab, sw: shiftwidth, sts: softtabstop, sta: smarttab
set ts=4
set sw=4
set et
"" SPECIFICS
" For text
"autocmd FileType text setlocal
" For C, C++, C#, java
"autocmd FileType c,cpp,cs,java setlocal
" For Lisp
autocmd FileType scheme setlocal ts=2 sw=2
" For python
"autocmd FileType python setlocal
" For Scripts(shell script, vimscript, SQL, ...)
autocmd FileType vim,sh,bat,sql,cmake setlocal ts=2 sw=2
" For JavaScript
"autocmd FileType javascript setlocal
" For Markups(XML, html, ...)
autocmd FileType xml,html setlocal ts=2 sw=2
" For Makefile
autocmd FileType make setlocal noet
""""" End Programing

""""" GUI
if has('gui_running')
  " Default win size for 14" notebook screen
  let g:winpos_h = 700
  let g:winpos_v = 20
  let g:lines_const = 30
  let g:columns_const = 80

  function GUIWinSize()
    let &lines = g:lines_const
    let &columns = g:columns_const
    execute printf("winpos %d %d", g:winpos_h, g:winpos_v)
  endfunction

  " ToggleWin() adapt the window size
  " hotkey binding is at 'Keymaps' region
  function ToggleWin(plus_lines, plus_columns)
    if &lines == g:lines_const && &columns == g:columns_const
      let &lines = a:plus_lines
      let &columns = a:plus_columns
    else
      " turn off
      if exists(":NERDTreeClose")
        NERDTreeClose
      endif
      if exists(":TagbarClose")
        TagbarClose
      endif
      let &lines = g:lines_const
      let &columns = g:columns_const
      execute printf("winpos %d %d", g:winpos_h, g:winpos_v)
    endif
  endfunction

  call GUIWinSize()
  " turn off menu, tools bar
  set guioptions-=m
  set guioptions-=T
  " turn off scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
endif
""""" End GUI

""""" Keymaps
"" Only built-in supported keymaps here. Plugin keymaps are at 'Plugins Options' region.
" leader key
let mapleader = ","
" use space to scroll down, backspace to scroll up
nnoremap <space>      <c-f>
nnoremap <backspace>  <c-b>
" keymap for :noh (cancel searching highlight)
nnoremap <leader>n  :noh<CR>

" cut and paste behavior
if has("clipboard")
  " CTRL-X and SHIFT-Del are Cut
  vnoremap <C-X> "+x
  " CTRL-C and CTRL-Insert are Copy
  vnoremap <C-C> "+y
  " Use CTRL-Q to do what CTRL-V used to do
  noremap <C-Q>		<C-V>
  " CTRL-V and SHIFT-Insert are Paste
  "map <C-V>		"+gP
  " CTRL-V insert mode paste
  exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
  " CTRL-V cmdline paste
  cmap <C-V>		<C-R>+
endif

if has('gui_running')
  nnoremap <silent> <F3>  :call ToggleWin(g:lines_const + 10, 2 * g:columns_const)<CR>
endif

" quickfix
nnoremap <F9>   :cp<CR>
nnoremap <F10>  :cn<CR>
""""" End Keymaps

""""" Plugins Options
let s:file_po = glob('~/vimrc/PluginsOptions.vim')
if s:file_po != ""
  exec "source" s:file_po
endif
""""" End Plugins Options

""""""""""END CUSTOMIZATION""""""""""
