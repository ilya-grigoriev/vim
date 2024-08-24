nnoremap <buffer> 'c :!cc -g %<CR>

fun! RunCwithArgs()
	let args = input('Enter arguments for executable file: ')
	:!./a.out g:args
	unlet args
endf
nnoremap <buffer> 'a :call RunCwithArgs()<CR>
nnoremap <buffer> <CR> :!./a.out<CR>

function DebugC()
	:!cc -g % 
	:!gdb --tui a.out
endfunction

nnoremap <buffer> 'd :call DebugC()<CR>

set completeopt=menu,menuone,popup,noselect,noinsert
