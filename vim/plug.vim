" Load vim-plug if necessary
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Misc
Plug 'L9'
Plug 'tpope/vim-dispatch'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'vim-scripts/cmdalias.vim'

" Faux orgmode
Plug 'vimwiki/vimwiki'

" Visual
Plug 'bling/vim-airline'

" Editing
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-abolish'
Plug 'ciaranm/detectindent'
Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }

Plug 'Valloric/YouCompleteMe'

" Language
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'aklt/plantuml-syntax'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'ekalinin/Dockerfile.vim'

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mileszs/ack.vim'

" Git
Plug 'tpope/vim-fugitive'

" Colors
Plug 'flazz/vim-colorschemes'

call plug#end()
