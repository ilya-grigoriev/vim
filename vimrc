let mapleader = ","

imap jk <Esc>
nnoremap 's :%s/
nnoremap <C-n> :Ntree<CR>
nnoremap 't :tabnew<CR>
nnoremap <C-Bslash> :tab :terminal ++close<CR>
nnoremap ,s :%s/

nnoremap gb <C-^>

nnoremap <C-j> :move +1<CR>
nnoremap <C-k> :move -2<CR>

nnoremap "t :!ctags -R .<CR>

colorscheme murphy

set path+=/nix/store/*glibc*dev/include/
set path+=/nix/store/*gcc*/lib/gcc/x86_64-unknown-linux-gnu/*/include/

set number
set colorcolumn=79
set cursorline
set wildmenu
set ignorecase

set scrolloff=10
set scroll=5

set shiftwidth=4
set tabstop=4

set laststatus=2

filetype on
filetype plugin on
filetype indent on

syntax on

vnoremap <C-y> :w !xclip -i -sel c<CR><CR>

" Setting up snippets
let g:UltiSnipsSnippetDirectories	= ["~/.config/home-manager/modules/vim/snippets"]
let g:UltiSnipsExpandTrigger 		= "<CR>"
let g:UltiSnipsJumpForwardTrigger  	= "<C-l>"
let g:UltiSnipsJumpBackwardTrigger 	= "<C-b>"

" Setting colorscheme
color jellybeans

" Setting latex
let g:tex_flavor = "latex"
let g:vimtex_view_method = 'zathura'
nnoremap ,to :VimtexView<CR>
nnoremap ,tc :VimtexCompile<CR>
nnoremap ,tf :!latexindent -w %<CR>

" Setting completion
" set omnifunc=syntaxcomplete#Complete
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" let g:ycm_enable_inlay_hints = 1
" let g:ycm_key_list_select_completion = ['<Tab>']
" let g:ycm_key_list_previous_completion = ['<S-Tab>']

" Open lazygit
nnoremap 'g :terminal ++close lazygit<CR>

" Commenter
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
vmap <silent> ,c <plug>NERDCommenterToggle

" Fzf
nnoremap ,f :FZF<CR>
nnoremap ,g :Rg<CR>

" Manim
nnoremap ,pm :terminal ++close manim -pql %<CR>

" C
" nnoremap ,c :!cc %<CR>
" nnoremap ,r :!./a.out<CR>
" nnoremap ,m :ClangFormat<CR>
"
" function DebugC()
"     :!cc -g %
"     :!gdb --tui a.out
" endfunction
" nnoremap ,d :call DebugC()<CR>

" Completion
let g:ale_linters_explicit = 1
let b:ale_linters = {
			\	'c': ['clangcheck'],
			\ }
set signcolumn=no
let g:ale_virtualtext_cursor = 'disabled'
nnoremap ,e :ALEDetail<CR>
