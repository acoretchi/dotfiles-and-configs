" Mandatory stuff 
set nocompatible " Use vim settings
set hidden " TextEdit might fail if hidden is not set
set nomodeline " Disable potentially dangerous modelines

" Source plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Colorscheme
colo molokai
set termguicolors

" Enable transparency in transparent terminal emulators
" These are needed because nvim overwrite the highlights on start
autocmd VimEnter * :hi! Normal ctermbg=NONE guibg=NONE!
autocmd VimEnter * :hi! LineNr ctermbg=NONE guibg=NONE!

" Hybrid line numbering
set number
set relativenumber

" Enable sytax highlighting
syntax on

" Basic shit
set bs=2 "Make backspace behave
set virtualedit=onemore "Let cursor go to the end of the line properly
set history=1000 " Allow vim to remember further back

" Dont make swapfiles or backups
set noswapfile 
set nobackup
set nowritebackup

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

" Force hjkl movement 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>

" Move vertically according to displayed lines, not actual lines
nnoremap j gj
nnoremap k gk

" Search
set hlsearch " Search highlighting
set ignorecase " Ignore case when searching
set incsearch " Incremental search

" Rendering
set encoding=utf-8
set scrolloff=1
set sidescrolloff=5
set wrap

" Escape insert mode with jj
inoremap jj <Esc>

" Ctrl and hjkl movement in insert and command mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
