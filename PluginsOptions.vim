""""" Plugins Options

""" NERDTree
" Display bookmarks after start
let NERDTreeShowBookmarks = 1

""" Taglist
" Taglist Options Setting
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1
let Tlist_Enable_Fold_Column = 0

""" Airline
let g:airline#extensions#whitespace#checks=['indent', 'mixed-indent-file']

""" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

"" Plugin keymaps
nnoremap <silent> <F2>  :NERDTreeToggle<CR>
nnoremap <silent> <F4>  :TlistToggle<CR>

""""" End Plugins Options
