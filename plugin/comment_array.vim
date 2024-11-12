fun! CommentArrow(type_moving)
	let col = virtcol('.')
	if a:type_moving == "down"
		call feedkeys(printf("o\<C-u>#%s│\<CR>", repeat(" ", col-2)))
		call feedkeys(printf("\<C-u>\<C-u>#%s└", repeat(" ", col-2)))
	elseif a:type_moving == "up"
		call feedkeys(printf("O\<C-u>#%s│\<Esc>", repeat(" ", col-2)))
		call feedkeys(printf("O\<C-u>\<C-u>#%s┌", repeat(" ", col-2)))
	endif
endf
 
nnoremap ct :call CommentArrow("down")<CR>
nnoremap cT :call CommentArrow("up")<CR>
