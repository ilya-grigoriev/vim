nnoremap ,c :!cc %<CR>
nnoremap ,r :!./a.out<CR>
nnoremap ,m :ClangFormat<CR>

function DebugC()
	:!cc -g % 
	:!gdb --tui a.out
endfunction
nnoremap ,d :call DebugC()<CR>
