let g:tex_flavor = "latex"
let g:vimtex_view_method = 'zathura'

nnoremap <buffer> 'o :VimtexView<CR>
nnoremap <buffer> <CR> :VimtexCompile<CR>
nnoremap <buffer> "m :!latexindent -w %<CR>
