function! hacking#init(dir) abort
  call plug#begin(a:dir)

  Plug 'roxma/nvim-completion-manager'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': './install.sh' }
  Plug 'SirVer/ultisnips'

  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-sleuth'
  Plug 'Raimondi/delimitMate'

  Plug 'ap/vim-buftabline'
  Plug 'mhinz/vim-signify'

  call plug#end()
endfunction
