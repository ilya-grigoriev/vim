let g:ale_linters_explicit = 1
let b:ale_linters = {
			\	'c': ['cc'],
			\ }
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

set signcolumn=no

nnoremap 'e :ALEDetail<CR>
