""""" PLUGINS OPTIONS

""" NERDTree
" Display bookmarks after start
let NERDTreeShowBookmarks = 1

""" Tagbar
"let g:tagbar_sort = 0

""" Airline
"let g:airline_symbols_ascii = 1
"let g:airline_left_sep = '>'
"let g:airline_right_sep = '<'
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline#extensions#whitespace#checks=['indent', 'mixed-indent-file']

""" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

""" ultisnips
let g:UltiSnipsExpandTrigger = "<enter>"

""" vim-go
"let g:go_autodetect_gopath = 1
" turn off vim-go's gopls
let g:go_gopls_enabled = 0


""""" PLUGINS KEYMAPS
nnoremap <F2>  :NERDTreeToggle<CR>
"nnoremap <F4>  :TagbarToggle<CR>
