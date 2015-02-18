cabbrev path echo expand('%:p')

command! W w !sudo tee % > /dev/null

cabbrev num set nu
cabbrev num! set nu
cabbrev rnum set relativenumber

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

""""""""""""""""
" Movement
""""""""""""""""

" Treate long lines as break lines
map j gj
map k gk


""""""""""""""""
" Windows & Tabs
""""""""""""""""
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


""""""""""""""""
" Searching
""""""""""""""""

" When pressing enter it will also run :noh to turn off highlights from
" previous search
nnoremap <CR> :noh<CR>


""""""""""""""""
" Spellcheck
""""""""""""""""

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>sb zw
map <leader>s? z=
