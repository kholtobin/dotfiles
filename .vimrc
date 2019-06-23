set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim.git'
Plugin 'itchyny/lightline.vim'
Plugin 'lmeijvogel/vim-yaml-helper'
Plugin 'ngmy/vim-rubocop'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'henrik/vim-indexed-search'
Plugin 'w0rp/ale'
Plugin '907th/vim-auto-save'
" colorschemes
Plugin 'morhetz/gruvbox'
Plugin 'fxn/vim-monochrome'
Plugin 'rakr/vim-one'
Plugin 'joshdick/onedark.vim'

" Now we can turn our filetype functionality back on
call vundle#end()
filetype plugin indent on

" Settings
syntax enable

set number
" set relativenumber

"highlight search result
set hlsearch

" enable auto display of path to node under cursor
let g:vim_yaml_helper#auto_display_path = 1

" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" set background=dark
" let g:gruvbox_italic=1
" colorscheme gruvbox

set termguicolors
set background=dark
let g:one_allow_italics = 1
colorscheme one

" let g:monochrome_italic_comments = 1
" colorscheme monochrome

set colorcolumn=81,101,121
set cursorline

set tabstop=2
set shiftwidth=2
set expandtab

"turn off breaking long lines
set nowrap

" Disable swap file
set nobackup
set nowritebackup
set noswapfile

" Search
set ic " ignore case
set incsearch " interactive

" fzf config
nnoremap <C-p> :Files<CR>

" vim-auto-save config
let g:auto_save = 1 " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let mapleader = ' '
nnoremap <Leader><Leader> <C-^>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>e :e<CR>
nnoremap <leader>g :ALEGoToDefinition<CR>
nnoremap <leader>f :ALEFindReferences<CR>
nnoremap <leader>n :ALENext<CR>
