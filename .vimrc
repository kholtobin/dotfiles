set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle plugins
Plugin 'gmarik/vundle'
"Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'mattn/gist-vim.git'
Plugin 'matze/vim-move.git'
Plugin 'itchyny/lightline.vim'

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Settings
syntax enable
set number
" Disables since this options makes vim too slow
" set relativenumber

"nerdtree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"map <C-n> :NERDTreeToggle<CR>

"highlight search result
set hlsearch

" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

colorscheme desert

"set a custom modifier for key bindings - Ctrl
let g:move_key_modifier = 'C'

set tabstop=2
set shiftwidth=2
set expandtab

"turn off breaking long lines
set nowrap

"display tabs and trailing spaces
"set list
"set listchars=tab:>-,trail:⋅,nbsp:⋅

" Disables since this options makes vim too slow
" set cursorline

" Disable swap file
set nobackup
set nowritebackup
set noswapfile

" Search
set ic " ignore case
set incsearch " interactive
