" Misc
Plugin 'L9'
Plugin 'tpope/vim-dispatch'
Plugin 'tmux-plugins/vim-tmux-focus-events'

" Faux orgmode
Plugin 'vimwiki/vimwiki'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'tbabej/taskwiki'

" Visual
Plugin 'bling/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'suan/vim-instant-markdown'

" Editing
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-abolish'
Plugin 'ciaranm/detectindent'
Plugin 'easymotion/vim-easymotion'

if v:version >= 703
    Plugin 'Valloric/YouCompleteMe'
endif

" Language
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'marijnh/tern_for_vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'xsbeats/vim-blade'
Plugin 'othree/html5.vim'
Plugin 'StanAngeloff/php.vim.git'
Plugin 'elixir-lang/vim-elixir'
Plugin 'elzr/vim-json'
Plugin 'aklt/plantuml-syntax'
if v:version <= 703
    Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
endif

" Navigation
Plugin 'szw/vim-ctrlspace'
" Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mileszs/ack.vim'

" Git
Plugin 'tpope/vim-fugitive'

" Colors
Plugin 'flazz/vim-colorschemes'
