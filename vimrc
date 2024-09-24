let mapleader = "'"

imap jk <Esc>
nnoremap 's :%s/
nnoremap <C-n> :Ntree<CR>
nnoremap 't :tabnew<CR>
nnoremap <C-Bslash> :tab :terminal ++close<CR>

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

" Moving setup
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

nnoremap "p :so:PlugInstall<CR>
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'nanotech/jellybeans.vim'
Plug 'SirVer/ultisnips'
Plug 'dense-analysis/ale'
Plug 'lervag/vimtex'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf.vim'
call plug#end()

color jellybeans

" For transparency
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi StatusLine guibg=NONE ctermbg=NONE ctermfg=white guifg=white
hi SignColumn guibg=NONE ctermbg=NONE
hi TabLineSel ctermbg=white ctermfg=black cterm=NONE
hi TabLine ctermbg=NONE ctermfg=white
