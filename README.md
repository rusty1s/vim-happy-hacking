# Happy Hacking

```vim
let s:config_dir = fnamemodify($MYVIMRC, ':h')
let s:plug_file = s:config_dir . '/autoload/plug.vim'
if empty(glob(s:plug_file))
  silent execute '!curl -fLo ' . s:plug_file . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

let s:bundle_dir = s:config_dir . '/bundle'
call plug#begin(s:bundle_dir)
Plug 'rusty1s/vim-happy-hacking'
call plug#end()
call hacking#init(s:bundle_dir)
```
