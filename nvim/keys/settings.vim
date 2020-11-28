"""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""
"""
let g:NERDTreeWinPos = "left"
map <C-b> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

" Show hidden files in NERDTree
let NERDTreeShowHidden = 1

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

""""""""""""""""""""""
" => Nerd Commenter
""""""""""""""""""""""
"""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
