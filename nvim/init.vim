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
Plug 'kaicataldo/material.vim'
call plug#end()

" Fix Transparent Background
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

"set t_ZH=^[[3m
"set t_ZR=^[[23m
set termguicolors

source ~/.dotfiles/nvim/plugins.vim

" Syntax
syntax on
syntax enable

" Colorscheme
colorscheme material

" Filetype
filetype off
filetype plugin indent on

" Intentation
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cindent

" Misc Settings
set nowrap
set title
set ignorecase
set smartcase
set incsearch
set ruler
set showmatch
set encoding=utf-8
set wildmode=longest,list,full
set number relativenumber
set splitbelow splitright
set clipboard=unnamedplus

" Automatic Functions
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
