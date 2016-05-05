inoremap kj <Esc>

command! Path echo expand('%:p')

command! W w !sudo tee % > /dev/null

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>mm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

""""""""""""""""
" Movement
""""""""""""""""

" Treate long lines as break lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

""""""""""""""""
" Text Manipulation
""""""""""""""""

" Remap s to insert single character after character under cursor
nnoremap s :exec "normal a".nr2char(getchar())."\e"<CR>

" Remap S to do what s did: delete the character under the cursor, and go into
" insert mode.
nnoremap S xi

"""""""""""""""
" Buffers
"""""""""""""""
noremap <leader>bn :bn<CR>
noremap <leader>bp :bp<CR>
noremap <leader>bd :Bclose<CR>
noremap <leader>bdf :Bclose!<CR>

""""""""""""""""
" Windows & Tabs
""""""""""""""""
" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Map alt+movement keys to ctrl+w followed by the movement key
" Makes moving windows much simpler
map ∆ <C-W>J
map ˚ <C-W>K
map ˙ <C-W>H
map ¬ <C-W>L

" Window movement
map <leader>X :split
map <leader>S :vsplit

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
nmap <CR> :noh<CR>


""""""""""""""""
" Spellcheck
""""""""""""""""

" Pressing <leader>ss will toggle and untoggle spell checking
map <leader>sc :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>sb zw
map <leader>ss z=

""""""""""""""""
" Git
""""""""""""""""
map <leader>gs :Gstatus<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

function! s:setupMarkdown()
    nnoremap <leader>P :silent !open Marko.app '%:p'<CR>
endfunction

autocmd BufEnter *.md call s:setupMarkdown()

""""""""""""""""""""
" Command Aliases
""""""""""""""""""""
runtime! plugin/cmdalias.vim

if exists(':Alias')
    " Resizing buffers
    call CmdAlias('vres', 'vertical resize')
else
    echo "Sorry some initializations will be ignored as CmdAlias is nowhere to be found"
endif
