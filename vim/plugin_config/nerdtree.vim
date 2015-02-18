" NerdTree
let g:nerdtree_tabs_open_on_new_tab=1
map <leader>tt <plug>NERDTreeTabsToggle<cr>

" Close VIM if NERDTree is the only window left open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
