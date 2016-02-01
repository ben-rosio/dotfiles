nmap <leader>x <Plug>VimwikiToggleListItem
let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_list = [{'path': '~/wiki', 'syntax': 'markdown', 'template_default': 'default', 'ext': '.md',
            \ 'path_html': '~/wiki/site_html/', 'template_path': '~/wiki/templates/', 'custom_wiki2html': 'vimwiki_markdown',
            \ 'template_ext': '.tpl'}]

augroup filetypedetect
    au! BufRead,BufNewFile */wiki/*.md set filetype=vimwiki
augroup END
