call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'ciaranm/detectindent'
Plug 'mattn/emmet-vim'
Plug 'oblitum/rainbow'
Plug 'mcchrish/nnn.vim'
Plug 'shmup/vim-sql-syntax'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

set t_ZH=^[[3m
set t_ZR=^[[23m
set termguicolors

" Plugin settings:
let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name'
  \ },
  \ }
let g:lightline.colorscheme = "palenight"
let g:palenight_terminal_italics=1
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_code_completion_enabled = 1
let g:go_fmt_command = "goimports"
let g:dart_format_on_save = 1
let g:prettier#autoformat = 0
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\   'typescript' : ['prettier'],
\}

syntax on
syntax enable
colorscheme palenight
filetype off
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set title
set ignorecase
set smartcase
set incsearch
set autoindent
set cindent
set ruler
set showmatch
set encoding=utf-8
set wildmode=longest,list,full
set number relativenumber
set splitbelow splitright

autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
