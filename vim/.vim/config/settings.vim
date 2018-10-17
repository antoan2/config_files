set number

filetype plugin indent on
syntax on

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark

set wildmenu

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

:nnoremap :tn :tnext
:nnoremap :tp :tprev

set tags=tags;

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

autocmd BufWritePre * %s/\s\+$//e

set tags=tags;/
" set nohlsearch

" map <C-t> :NERDTreeToggle <CR>

autocmd VimEnter * NERDTree
