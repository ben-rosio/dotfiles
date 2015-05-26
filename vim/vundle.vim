" Misc
Plugin 'L9'
Plugin 'tpope/vim-dispatch'

" Faux orgmode
Plugin 'vimwiki/vimwiki'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'tbabej/taskwiki'

" Visual
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-bufferline'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/promptline.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'aklt/plantuml-syntax'

" Editing
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'sjl/gundo.vim'
Plugin 'chrisbra/NrrwRgn'

if v:version >= 703
    Plugin 'Valloric/YouCompleteMe'
endif

" Language
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'marijnh/tern_for_vim'
if v:version <= 703
    Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
endif
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'xsbeats/vim-blade'
Plugin 'othree/html5.vim'

" Navigation
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" Git
Plugin 'tpope/vim-fugitive'

" Colors
Plugin 'flazz/vim-colorschemes'
