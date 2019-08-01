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
Plug 'itchyny/vim-gitbranch'
Plug 'andreypopp/vim-colors-plain'
Plug 'mhinz/vim-startify'
call plug#end()

" Fix Transparent Background
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

"set t_ZH=^[[3m
"set t_ZR=^[[23m
set termguicolors

source ~/.config/nvim/filetype.vim
source ~/.config/nvim/plugin/settings.vim
source ~/.config/nvim/plugin/colors.vim

" Syntax
syntax on
syntax enable

" Automatic Functions
au VimLeave * set guicursor=a:ver25-blinkwait700-blinkon400-blinkoff250
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
