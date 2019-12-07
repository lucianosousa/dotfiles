autocmd BufWritePre * :%s/\s\+$//e

color desert

let mapleader=","

" Fzf mapping replacing ControlP command
nnoremap <C-p> :Files<Cr>
" Fzf mapping for find in files
nnoremap <C-g> :Rg<Cr>

nnoremap <leader><space> :nohlsearch<CR>

nnoremap <Leader>m :ALEDetail<CR>

let g:airline#extensions#tabline#enabled = 1

" ALE (lint)
" customize linter signs
let g:ale_sign_error = '●'
let g:ale_sign_warning = '•'
" only lint when leaving insert mode after an edit
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
" show error details with m[ore details]

set autoindent
set clipboard+=unnamed
set cursorline
set display+=lastline
set encoding=utf-8
set expandtab
set ignorecase
set laststatus=2
set number
set ruler
set shiftwidth=2
set softtabstop=2
set tabstop=2
set wildmenu

syntax on
filetype plugin indent on

" Vim Plug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
call plug#end()

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

"Fzf customization
let s:fzf_custom_opts = { 'options': '--tiebreak=end,length,index' }
