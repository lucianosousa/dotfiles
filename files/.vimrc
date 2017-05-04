autocmd BufWritePre * :%s/\s\+$//e

color desert

let mapleader=","

nnoremap <leader><space> :nohlsearch<CR>

let g:airline#extensions#tabline#enabled = 1

set encoding=utf-8
set laststatus=2
set tabstop=2
set shiftwidth=2
set number
set expandtab
set paste
set ruler
set cursorline
set wildmenu

set display+=lastline

set formatoptions+=j

syntax on
filetype plugin indent on

#Vim Plug: https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-bundler'
Plug 'airblade/vim-gitgutter'

call plug#end()
