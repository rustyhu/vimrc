""""" PLUGINS OPTIONS

""" NERDTree
" Display bookmarks after start
let NERDTreeShowBookmarks = 1

""" Tagbar
let g:tagbar_sort = 0

""" Airline
"let g:airline_symbols_ascii = 1
"let g:airline_left_sep = '>'
"let g:airline_right_sep = '<'
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline#extensions#whitespace#checks=['indent', 'mixed-indent-file']

""" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

""" YouCompleteMe
" Indicate a global ycm conf for c/c++ programming analysis.
" Define a overlap one if another position is used.
let g:ycm_global_ycm_extra_conf = '~/vimrc/.ycm_extra_conf.py'
" close YCM clangd now
let g:ycm_use_clangd = 0

""" ultisnips
let g:UltiSnipsExpandTrigger = "<c-enter>"

""" vim-go
"let g:go_autodetect_gopath = 1


""""" PLUGINS KEYMAPS 
nnoremap <F2>  :NERDTreeToggle<CR>
nnoremap <F4>  :TagbarToggle<CR>
" Jump
nnoremap <leader>e  :YcmCompleter GoTo<CR>

