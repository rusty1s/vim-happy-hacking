autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

if system('uname') == "Darwin\n"
  let g:ncm2_pyclang#library_path='/Library/Developer/CommandLineTools' .
        \ '/usr/lib'
endif
