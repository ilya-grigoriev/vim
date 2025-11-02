let mapleader = "'"

nnoremap 's :%s/
nnoremap <C-n> :Ntree<CR>
nnoremap 't :tabnew<CR>
nnoremap <C-Bslash> :tab :terminal ++close<CR>

nnoremap 't :tabnew<CR>

nnoremap gb <C-^>

nnoremap <C-j> :move +1<CR>
nnoremap <C-k> :move -2<CR>

nnoremap "t :!ctags -R .<CR>

" For fast moving
set relativenumber
set number

" UI setup
set colorcolumn=79
set cursorline
set wildmenu
set ignorecase
set hlsearch

" Moving setup
set scrolloff=10
set scroll=5

set shiftwidth=4
set tabstop=4
set autoindent

set laststatus=2

filetype on
filetype plugin on
filetype indent on

syntax on

if $XDG_SESSION_TYPE == "wayland"
	vnoremap <C-y> :w !wl-copy -n<CR><CR>
elseif $XDG_SESSION_TYPE == "x11"
	vnoremap <C-y> :w !xclip -i -sel c<CR><CR>
endif

nnoremap "p :so:PlugInstall<CR>
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'nanotech/jellybeans.vim'
Plug 'SirVer/ultisnips'
Plug 'dense-analysis/ale'
Plug 'lervag/vimtex'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf.vim'
Plug 'takac/vim-hardtime'
Plug 'kaarmu/typst.vim'
call plug#end()

color jellybeans
color transparency

let g:hardtime_default_on = 1
