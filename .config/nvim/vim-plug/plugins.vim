call plug#begin()

" Molokai colourscheme
Plug 'tomasr/molokai'

" Language features
Plug 'sheerun/vim-polyglot'

" Status-bar
Plug 'vim-airline/vim-airline'

" For working with quotes, braces and tags
Plug 'machakann/vim-sandwich'

" Enter quotes and braces in pairs
Plug 'jiangmiao/auto-pairs'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()
