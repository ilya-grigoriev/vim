nmap <buffer> l <CR>
nmap <buffer> h -
nmap <buffer> a %

let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
autocmd FileType netrw setlocal number
autocmd FileType netrw :HardTimeOn
