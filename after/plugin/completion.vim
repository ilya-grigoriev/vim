let g:ale_linters_explicit = 1
let b:ale_linters = {
			\	'c': ['cc'],
			\ }
let g:ale_virtualtext_cursor = 'disabled'

set signcolumn=no

nnoremap 'e :ALEDetail<CR>
