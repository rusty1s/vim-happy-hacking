let g:colors_name='happy-hacking-light'
set background=light

highlight clear
syntax reset

" +-------+-----+-------+--------+------+---------+------+-------+
" | Black | Red | Green | Yellow | Blue | Magenta | Cyan | White |
" +-------+-----+-------+--------+------+---------+------+-------+
" |     0 |   1 |     2 |      3 |    4 |       5 |    6 |     7 |
" +-------+-----+-------+--------+------+---------+-----+--------+
"
hi ColorColumn ctermbg=7
hi StatusLine ctermbg=7 ctermfg=0 cterm=bold
hi LineNr ctermfg=0
hi CursorLineNr ctermfg=4 cterm=bold
hi Comment ctermfg=0 cterm=italic
