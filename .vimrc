set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim.git'
Plugin 'matze/vim-move.git'
Plugin 'itchyny/lightline.vim'
Plugin 'lmeijvogel/vim-yaml-helper'
Plugin 'ngmy/vim-rubocop'
" colorschemes
Plugin 'fxn/vim-monochrome'
Plugin 'rakr/vim-one'
Plugin 'joshdick/onedark.vim'
Plugin 'henrik/vim-indexed-search'

" Now we can turn our filetype functionality back on
call vundle#end()
filetype plugin indent on

" Settings
syntax enable

set number
" set relativenumber

"nerdtree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"map <C-n> :NERDTreeToggle<CR>

"highlight search result
set hlsearch

" enable auto display of path to node under cursor
let g:vim_yaml_helper#auto_display_path = 1

" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


set background=dark
colorscheme one
set colorcolumn=81,101,121

"set a custom modifier for key bindings - Ctrl
let g:move_key_modifier = 'C'

set tabstop=2
set shiftwidth=2
set expandtab

"turn off breaking long lines
set nowrap

" Disables since this options makes vim too slow
" set cursorline

" Disable swap file
set nobackup
set nowritebackup
set noswapfile

" Search
set ic " ignore case
set incsearch " interactive

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
