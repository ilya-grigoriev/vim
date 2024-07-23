let g:ale_linters_explicit = 1
let b:ale_linters = {
			\	'c': ['clangcheck'],
			\ }
set signcolumn=no
let g:ale_virtualtext_cursor = 'disabled'
nnoremap ,e :ALEDetail<CR>
