nnoremap <buffer> 'c :!cc %<CR>
nnoremap <buffer> <CR> :!./a.out<CR>

function DebugC()
	:!cc -g % 
	:!gdb --tui a.out
endfunction

nnoremap <buffer> 'd :call DebugC()<CR>
