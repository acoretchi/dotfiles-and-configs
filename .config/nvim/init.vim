" Mandatory stuff 
set nocompatible " Use vim settings
set hidden " TextEdit might fail if hidden is not set
set nomodeline " Disable potentially dangerous modelines

" Source plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Colorscheme
colo molokai
set termguicolors

" Setup colourizer
lua require'colorizer'.setup()

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
set updatetime=300 "Make nvim more responsive

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

" Better indentation movement 
vnoremap < <gv
vnoremap > >gv

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
set scrolloff=10
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Neoclide
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
