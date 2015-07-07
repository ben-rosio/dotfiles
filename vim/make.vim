map <leader>mk :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>

set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

autocmd Filetype java set makeprg=javac\ %
