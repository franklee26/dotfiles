syntax on
syntax enable

set nocompatible
filetype off
filetype plugin indent on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

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
