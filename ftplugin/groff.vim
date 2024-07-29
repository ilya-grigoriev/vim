fun! CompileGroff()
	:!tbl % | groff -%:e > %:r.pdf
endf

fun! ViewGroffDocument()
	:!zathura %:r.pdf &
endf

nnoremap <buffer> <Enter> :call CompileGroff()<CR>
nnoremap <buffer> 'o :call ViewGroffDocument()<CR>

" autocmd BufWritePost <buffer> call CompileGroffQuickfixList()
