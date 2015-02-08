set nocompatible              " be iMproved, required

filetype on
filetype plugin on
filetype indent on

set gdefault

set modelines=1

" Set mouse mode.
set mouse=a

if has('mouse_sgr')
  set ttymouse=sgr
endif

" Allow backspace to remove lines.
set backspace=indent,eol,start

set history=700
set so=4 " Set 4 lines to the cursor
let mapleader = ","
let g:mapleader = ","

set ignorecase
set smartcase

set hlsearch
set incsearch

set lazyredraw

set magic

set number

set encoding=utf-8

set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Treate long lines as break lines
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Map alt+movement keys to ctrl+w followed by the movement key
" Makes moving windows much simpler
map ∆ <C-W>J
map ˚ <C-W>K
map ˙ <C-W>H
map ¬ <C-W>L

" Window movement
map <leader>x :split 
map <leader>s :vsplit 

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>te :tabedit 
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

command! W w !sudo tee % > /dev/null

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>sb zw
map <leader>s? z=

" NerdTree
map <leader>tt :NERDTreeToggle<cr>

" When pressing enter it will also run :noh to turn off highlights from
" previous search
nnoremap <CR> :noh<CR>

" F2 will use the current tab settings to retab the file
noremap <F2> :retab!<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Tell CtrlP plugin to ignore the specified patterns
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist/*'

" Close VIM if NERDTree is the only window left open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show statusline always.
set laststatus=2

" Lightline
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ 'component': {
        \ 'readonly': '%{&readonly?"":""}',
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' },
    \ 'active': {
        \ 'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'], ['bufferline'] ],
        \ 'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \ },
    \ 'component_function': {
        \ 'fugitive': 'MyFugitive',
        \ 'filename': 'MyFilename',
        \ 'fileformat': 'MyFileformat',
        \ 'filetype': 'MyFiletype',
        \ 'fileencoding': 'MyFileencoding',
        \ 'mode': 'MyMode',
        \ 'ctrlpmark': 'CtrlPMark',
        \ 'bufferline': 'MyBufferline',
    \ },
    \ 'component_expand': {
        \ 'syntastic': 'SyntasticStatuslineFlag',
    \ },
    \ 'component_type': {
        \ 'syntastic': 'error',
    \ },
\ }

function! MyBufferline()
  call bufferline#refresh_status()
  let b = g:bufferline_status_info.before
  let c = g:bufferline_status_info.current
  let a = g:bufferline_status_info.after
  return  b == "" && a == "" ? '' : b . c . a
endfunction

function! MyModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! MyFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let _ = fugitive#head()
      return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP'
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'itchyny/lightline.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'bling/vim-bufferline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

colorscheme Tomorrow-Night-Eighties
