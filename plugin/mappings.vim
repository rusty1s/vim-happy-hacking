let mapleader=' '

" Remap "j/k" to "gj/gk" only without a count.
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Remap Enter to create a new line.
nnoremap <CR> o<Esc>

" Disallow quit typo.
nnoremap q: :q

" Map make command.
nnoremap <silent> <Leader>m :silent make<CR>

" Open "FZF".
nnoremap <Leader><Leader> :Files<CR>

" Close buffer.
nnoremap <silent> <Leader>q :bd<CR>

" Move between or create new windows.
nnoremap <silent> <Leader>h :call window#move('h')<CR>
nnoremap <silent> <Leader>j :call window#move('j')<CR>
nnoremap <silent> <Leader>k :call window#move('k')<CR>
nnoremap <silent> <Leader>l :call window#move('l')<CR>

" Resize windows.
nnoremap <silent> <Leader>H :vertical resize -5<CR>
nnoremap <silent> <Leader>J :resize +5<CR>
nnoremap <silent> <Leader>K :resize -5<CR>
nnoremap <silent> <Leader>L :vertical resize +5<CR>
