function! hacking#init() abort
  let s:config_dir=fnamemodify($MYVIMRC, ':h')
  let s:plug_file=s:config_dir . '/autoload/plug.vim'

  if empty(glob(s:plug_file))
    let s:url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    silent execute '!curl -fLo ' . s:plug_file . ' --create-dirs ' . s:url
    autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif

  call plug#begin(s:config_dir . '/bundle')

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
