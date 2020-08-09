" Source plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Hybrid line numbering
set number
set relativenumber

" Enable sytax highlighting
syntax on

" Mandatory shit
set nocompatible
set bs=2 "Make backspace behave
set noswapfile "Dont make annoying swapfiles
set virtualedit=onemore "Let cursor go to the end of the line properly

" Indentation
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
