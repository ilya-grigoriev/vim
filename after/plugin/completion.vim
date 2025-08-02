let g:ale_linters_explicit = 1
let g:ale_linters = {
			\	'asm': ['gcc'],
			\	'c': ['clangd'],
			\	'rust': ['rustc'],
			\	'perl': ['perl'],
			\ }
let g:ale_fixers = {
			\	'c': ['clang-format'],
			\	}
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_completion_enabled = 1

set omnifunc=ale#completion#OmniFunc

set signcolumn=no

nnoremap 'e :ALEDetail<CR>
