setlocal norelativenumber

setlocal foldmethod=expr
setlocal foldexpr=TexFold(v:lnum)
setlocal foldtext=TexFoldText()

function! TexFold(lnum) abort
  let l:line = getline(a:lnum)

  if l:line =~? '^\s*\\end{document}\s*$'
    return '0'
  endif

  if l:line =~? '^\s*\\section'
    return '>1'
  endif

  if l:line =~? '^\s*\\subsection'
    return '>2'
  endif

  return '='
endfunction

function! TexFoldText() abort
  let l:fold_line = getline(v:foldstart)

    if l:fold_line =~? '^\s*\\\(sub\)*section'
        let l:pattern = '\\\(sub\)*section{\([^}]*\)}'
        let l:repl = ' \2'
    endif

    let l:line = substitute(l:fold_line, l:pattern, l:repl, '') . ' '
    return '+' . v:folddashes . l:line
endfunction
