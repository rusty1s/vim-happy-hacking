# Happy Hacking

```vim
let s:config_dir = fnamemodify($MYVIMRC, ':h')
let s:plug_file = s:config_dir . '/autoload/plug.vim'
if empty(glob(s:plug_file))
  let s:url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  silent execute '!curl -fLo ' . s:plug_file . ' --create-dirs ' . s:url
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

let &rtp .= ',' . s:config_dir . '/vim-happy-hacking'
call hacking#init(s:config_dir . '/bundle')
```
