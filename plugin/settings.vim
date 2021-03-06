scriptencoding utf-8

set clipboard=unnamedplus
set hidden
set noswapfile
set number relativenumber numberwidth=4
set noshowcmd
let &colorcolumn='+'.join(range(1, 110),',+')

set list listchars=tab:\ ,trail:

set linebreak
set breakindent
let &showbreak='…'

set ignorecase
set smartcase

set spelllang=en_us,de

" Number of spaces that a Tab in the file counts for.
set tabstop=2
set softtabstop=2

" Spaces > Tab.
set expandtab
set shiftwidth=0

colorscheme happy-hacking-dark
