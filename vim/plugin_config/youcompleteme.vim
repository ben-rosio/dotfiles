let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_always_populate_location_list = 1 " default 0

let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
" let g:ycm_filetype_whitelist = { '*': 1 }
" let g:ycm_key_invoke_completion = '<C-Space>'

" nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>
