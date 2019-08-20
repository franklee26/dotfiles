call plug#begin('~/.local/share/nvim/plugged')
Plug 'fatih/vim-go'
Plug 'ciaranm/detectindent'
Plug 'shmup/vim-sql-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/vim-gitbranch'
Plug 'joshdick/onedark.vim'
Plug 'w0rp/ale'
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
source ~/.config/nvim/plugin/go.vim

" Syntax
syntax on
syntax enable

" Automatic Functions
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup DetectIndent
   autocmd!
   autocmd BufReadPost *  DetectIndent
augroup END
