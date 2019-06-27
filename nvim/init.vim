call plug#begin('~/.local/share/nvim/plugged')

Plug 'dag/vim-fish'
Plug 'leafgarland/typescript-vim'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dart-lang/dart-vim-plugin'
Plug 'ciaranm/detectindent'

call plug#end()

let dart_format_on_save = 1
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports"

syntax on
syntax enable
"colorscheme base16-default-dark

set nocompatible
filetype off
filetype plugin indent on

set tabstop=2
set shiftwidth=2

"set mouse=a

set nowrap

set title

set ignorecase
set smartcase
set incsearch

" Epic
set autoindent
set cindent

" Live Match
set showmatch

" Show Ruler
set ruler

" More Natural
set splitbelow
set splitright

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set number
