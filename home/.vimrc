syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'rust-lang/rust.vim'

call plug#end()

set number
set scrolloff=5

set cindent
set tabstop=4
set shiftwidth=4
set expandtab
