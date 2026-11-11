""""" PLUGINS OPTIONS

""" NERDTree
" Display bookmarks after start
let NERDTreeShowBookmarks = 1

""" Airline
"let g:airline_symbols_ascii = 1
"let g:airline_left_sep = '>'
"let g:airline_right_sep = '<'
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline#extensions#whitespace#checks=['indent', 'mixed-indent-file']

""" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1


""""" PLUGINS KEYMAPS
nnoremap <F2>  :NERDTreeToggle<CR>
