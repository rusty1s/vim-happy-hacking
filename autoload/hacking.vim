function! hacking#init() abort
  silent! packadd minpac

  command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
  command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

  if !exists('*minpac#init')
    let s:config_dir=fnamemodify($MYVIMRC, ':h')
    let s:pack=s:config_dir . '/pack/minpac/opt/minpac'
    let s:url='https://github.com/k-takata/minpac.git'

    silent execute '!git clone ' . s:url . ' ' . s:pack
    execute 'PackUpdate'
  else
    call minpac#init()

    call minpac#add('roxma/nvim-yarp')
    call minpac#add('ncm2/ncm2')
    call minpac#add('ncm2/ncm2-bufword')
    call minpac#add('ncm2/ncm2-tmux')
    call minpac#add('ncm2/ncm2-path')
    call minpac#add('ncm2/ncm2-jedi')
    call minpac#add('ncm2/ncm2-pyclang')
    call minpac#add('ncm2/ncm2-vim')
    call minpac#add('ncm2/ncm2-ultisnips')

    call minpac#add('junegunn/fzf', {
          \ 'dir': '~/.fzf', 'do': './install --all' })
    call minpac#add('junegunn/fzf.vim')
    call minpac#add('SirVer/ultisnips')
    call minpac#add('w0rp/ale')
    call minpac#add('autozimu/LanguageClient-neovim', {
          \ 'branch': 'next', 'do': 'bash install.sh' })

    call minpac#add('tpope/vim-sleuth')
    call minpac#add('tpope/vim-surround')
    call minpac#add('tpope/vim-commentary')
    call minpac#add('tpope/vim-abolish')
    call minpac#add('tpope/vim-sleuth')
    call minpac#add('Raimondi/delimitMate')

    call minpac#add('ap/vim-buftabline')
    call minpac#add('mhinz/vim-signify')
  endif
endfunction
