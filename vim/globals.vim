set encoding=utf-8

filetype on
filetype plugin on
filetype indent on

" No error bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set history=700
set hidden " Allow hidden buffers

set number

set so=4 " Set 4 lines to the cursor

set modelines=1

" Allow backspace to remove lines.
set backspace=indent,eol,start


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

