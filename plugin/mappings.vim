let g:mapleader=' '

" Remap "j/k" to "gj/gk" only without a count.
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Remap Enter to create a new line.
nnoremap <CR> o<Esc>

" Disallow quit typo.
nnoremap q: :q

" Map make command.
nnoremap <Leader>m :silent make<CR>

" Open "FZF".
nnoremap <Leader><Leader> :Files<CR>

" Close buffer.
nnoremap <Leader>q :bd<CR>

" Move between or create new windows.
nnoremap <Leader>h :call window#move('h')<CR>
nnoremap <Leader>j :call window#move('j')<CR>
nnoremap <Leader>k :call window#move('k')<CR>
nnoremap <Leader>l :call window#move('l')<CR>

" Resize windows.
nnoremap <Leader>H :vertical resize +5<CR>
nnoremap <Leader>J :resize -5<CR>
nnoremap <Leader>K :resize +5<CR>
nnoremap <Leader>L :vertical resize -5<CR>
