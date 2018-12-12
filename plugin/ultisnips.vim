let s:config_dir=fnamemodify($MYVIMRC, ':h')
let g:UltiSnipsSnippetsDir=s:config_dir . '/vim-happy-hacking/ultisnips'
let g:UltiSnipsEditSplit='vertical'

nnoremap <Leader>u :UltiSnipsEdit<CR>

let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<Tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'
