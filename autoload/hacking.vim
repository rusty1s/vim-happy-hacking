function! hacking#init(dir) abort
  let s:plugs = split(globpath(a:dir, '*'), '\n')
  for plug in s:plugs
    if plug != 'vim-happy-hacking'
      let &rtp .= ',' . plug
    endif
  endfor
endfunction
