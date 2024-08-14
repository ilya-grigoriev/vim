tmap <C-g> <C-\><C-n>

nnoremap <C-h> gT
nnoremap <C-l> gt
" tnoremap <C-h> <C-\><C-n>gT
" tnoremap <C-l> <C-\><C-n>gt

imap <C-s> <Esc>:w<CR>a

nnoremap [<Space> O<Esc>j
nnoremap ]<Space> o<Esc>k

" Insiper by tpope
fun! DeleteLineBeforeCursor()
	let cur_line = line(".")
	if cur_line != 1
		call feedkeys("kdd")
	endif
endf
fun! DeleteLineAfterCursor()
	let cur_line = line(".")
	let last_line = line("$")
	if cur_line != last_line
		call feedkeys("jddk")
	endif
endf
nnoremap [x :call DeleteLineBeforeCursor()<CR>
nnoremap ]x :call DeleteLineAfterCursor()<CR>
