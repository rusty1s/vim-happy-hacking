function! hacking#init(dir) abort
  call plug#begin(a:dir)
  Plug 'tpope/vim-sleuth'
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-abolish'
  Plug 'roxma/nvim-completion-manager'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
  Plug 'junegunn/fzf.vim'
  Plug 'SirVer/ultisnips'
  Plug 'ap/vim-buftabline'
  Plug 'tpope/vim-sleuth'
  Plug 'Raimondi/delimitMate'
  call plug#end()
endfunction
