let g:ale_sign_error='~>'
let g:ale_sign_warning='~>'

let g:ale_fixers = {
\   'python': ['yapf'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\ }

let g:ale_fix_on_save=1
