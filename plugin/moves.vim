tmap <C-g> <C-\><C-n>

nnoremap <C-h> gT
nnoremap <C-l> gt

nnoremap <Space> :nohlsearch<CR>

imap <C-s> <Esc>:w<CR>a
nnoremap <C-s> <Esc>:w<CR>

nnoremap <C-b> :tag<CR>

" for select regex pattern in Perl
nnoremap vi/ T/vt/
nnoremap va/ F/vf/

" Insiped by tpope
fun! AddLineBeforeCursor()
	let cur_col = col('.') - 1
	call feedkeys("O\<Esc>j0")
	call feedkeys(cur_col . "l")
endf
fun! AddLineAfterCursor()
	let cur_col = col('.') - 1
	call feedkeys("o\<Esc>k0")
	call feedkeys(cur_col . "l")
endf

nnoremap [<Space> :call AddLineBeforeCursor()<CR>
nnoremap ]<Space> :call AddLineAfterCursor()<CR>

fun! DeleteLineBeforeCursor()
	let cur_line = line(".")
	let cur_col = col(".") - 1

	if (cur_line != 1)
		call feedkeys("kdd")
		call feedkeys(cur_col . "l")
	endif
endf
fun! DeleteLineAfterCursor()
	let cur_line = line(".")
	let cur_col = col(".") - 1

	let last_line = line("$")

	if (cur_line != last_line)
		call feedkeys("jdd")
		if (cur_line != (last_line - 1))
			call feedkeys("k")
		endif
		call feedkeys(cur_col . "l")
	endif
endf
nnoremap [x :call DeleteLineBeforeCursor()<CR>
nnoremap ]x :call DeleteLineAfterCursor()<CR>
