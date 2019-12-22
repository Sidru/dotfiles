set nocompatible " no compatibility with legacy vi
syntax on
colorscheme desert
set mouse=a

" Whitespace
set nowrap          " Avoid wrapping lines
set tabstop=4 		" tab width = 4 spaces
set shiftwidth=4 	" indent also is 4 spaces
set expandtab 		" use spaces, not tabs 
set number

" Searching
set hlsearch
set incsearch

set colorcolumn=100
highlight ColorColumn ctermbg=darkgrey

" Enable folding
set foldmethod=indent
set foldlevel=99
