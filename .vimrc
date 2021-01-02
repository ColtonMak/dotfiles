set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'chmp/mdnav'
Plug 'junegunn/goyo.vim'

call plug#end()

filetype plugin indent on

"Colors
syntax on
colorscheme molokai
let g:airline_theme='dark'

" Sets background to transparent
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

" Spaces & Tabs
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

" UI Config
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set ruler
set conceallevel=2

" Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Movement
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

set encoding=utf-8
set clipboard=unnamedplus
set scrolloff=5
set sidescrolloff=5

" open NERDTree automatically
autocmd VimEnter * NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" DelimitMate Settings
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

"vim index
nnoremap <Leader>ww :e ~/Documents/vim/wiki/index.md<CR>

" vim-pandoc
let g:pandoc#spell#enabled = 0
let g:pandoc#toc#position = "bottom"

" vim-pandoc-after
let g:pandoc#after#modules#enabled = ["ultisnips", "tablemode"]

" vim-table-mode
let g:table_mode_corner_corner = '+'
let g:table_mode_corner = '+'
let g:table_mode_header_fillchar = '='
