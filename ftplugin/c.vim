nnoremap <buffer> <CR> :!gcc % -o %< && clear && ./%< <CR>
nnoremap <buffer> "a :!gcc -S % && less %<.s <CR>
nnoremap <buffer> "o :!gcc -c % && objdump -d -Mintel %<.o \| less <CR>

set completeopt=menu,menuone,popup,noselect,noinsert
