set encoding=utf-8

filetype on
filetype plugin on
filetype indent on

" Show status bar
set laststatus=2

" No error bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set history=700
set hidden " Allow hidden buffers

set number
set relativenumber

set so=4 " Set 4 lines to the cursor

set modelines=4

" Allow backspace to remove lines.
set backspace=indent,eol,start

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Save on focus loss
au FocusLost * silent! wa

" Refresh on focus gain
au FocusGained * :redraw!

"""""""""""""""
" Syntax
"""""""""""""""
syntax enable

set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""
" Searching
""""""""""""""""
set ignorecase
set smartcase

set hlsearch
set incsearch
set lazyredraw

set gdefault

set magic

