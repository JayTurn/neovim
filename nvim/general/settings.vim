"""""""""""""""""""""""
" => General
"""""""""""""""""""""""

" Leader
let g:mapleader = "\<Space>"

" Colorscheme
" set background=dark
" colorscheme koehler

" Clear search highlighting.
nnoremap <leader>h :nohlsearch<CR>

" Show line numbers
set number

" Make the 80th column coloured.
set colorcolumn=80

" Disable function folding.
set foldmethod=manual
setl foldlevelstart=99

" Display long lines as a single line
set nowrap

" Show the cursor position at all times.
set ruler

" Window switching
map <Tab> <C-w>w
map <S-Tab> <C-w>W

" Moving a line of text up / down
map <C-j> :m .+1<CR>==
map <C-k> :m .-2<CR>==

" Strip trailing whitespace.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Make tabs 2 spaces
set tabstop:2
set shiftwidth:2
set expandtab
set smarttab

" Sets how many lines of history VIM has to remember
set history=500

" Fast saving
nmap <leader>w :w!<cr>

" File encoding
set fileencoding=utf-8

" Enable the mouse
set mouse=a

" So `` can be seen in markdown
set conceallevel=0

" Makes indenting smater
set smartindent
set autoindent

" Always display the status line
set laststatus=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

"Change font
:set guifont=Monospace\ 11

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Remove the status such as -- INSERT --
set noshowmode

" Faster completion
set updatetime=300
set timeoutlen=500

" Stop new line continuation of comments
set formatoptions-=cro

" Support copy and paste between vim and everything else
set clipboard=unnamedplus

" Working direction will always be the same as your working directory
set autochdir

" Auto-source when writing to init.vim
au! BufWritePost $MYVIMRC source %

" Allow overrides of files
cmap w!! w !sudo tee %
