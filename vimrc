set nocompatible
filetype plugin indent on
syntax on

colorscheme habamax
hi Normal ctermbg=NONE guibg=NONE

set number relativenumber
set termguicolors

set tabstop=4 shiftwidth=4 expandtab
set autoindent smartindent

set incsearch ignorecase smartcase

set autoread              " Reload files that have not been modified
set backspace=2           " Makes backspace behave like you'd expect
"set laststatus=2          " Always show the status bar

set showcmd
set hidden
set scrolloff=5
set linebreak
set splitright splitbelow

set wildmenu wildmode=longest:full,full
set noswapfile nobackup
set undofile
set undodir=~/.vim/undodir

set updatetime=300
set nowrap

let mapleader = " "

map <leader>y "+y
map <leader>p "+p

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" find file
"set path+=**
"set wildignore+=*/target/*,*/node_modules/*,*/.git/*
nnoremap <leader>f :e 

" cn & cp
nnoremap <leader>n :cn<CR>
nnoremap <leader>p :cp<CR>

augroup format_on_save
  autocmd!
  autocmd BufWritePost *.rs call system('cargo fmt') | edit!
augroup END
