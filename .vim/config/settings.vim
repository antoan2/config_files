set number

filetype plugin indent on
syntax on

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

:nnoremap :tn :tnext
:nnoremap :tp :tprev

set tags=tags;

autocmd BufWritePre * %s/\s\+$//e
