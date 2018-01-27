function! hacking#init(dir) abort
  let s:plugs = split(globpath(a:dir, '*'), '\n')
  for plug in s:plugs
    let s:name = split(plug, '/')[-1]
    if s:name !=# 'vim-happy-hacking'
      let &rtp .= ',' . plug
    endif
  endfor
endfunction
