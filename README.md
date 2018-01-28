# Happy Hacking

```vim
" Add this plugin to the runtimepath.
let s:config_dir = fnamemodify($MYVIMRC, ':h')
let &rtp .= ',' . s:config_dir . '/vim-happy-hacking'

call hacking#init()
```
