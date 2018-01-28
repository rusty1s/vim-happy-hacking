# Happy Hacking

```vim
let g:mapleader=' '

" Add this plugin to the runtimepath.
let s:config_dir=fnamemodify($MYVIMRC, ':h')
let &runtimepath .= ',' . s:config_dir . '/vim-happy-hacking'

call hacking#init()
```
