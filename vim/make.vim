map <leader>mk :make<Return>:copen<Return>
map <leader>cn :cprevious<Return>
map <leader>cp :cnext<Return>

set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

autocmd Filetype java set makeprg=javac\ %
