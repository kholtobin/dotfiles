call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'itchyny/lightline.vim'
Plug 'lmeijvogel/vim-yaml-helper'
Plug 'ngmy/vim-rubocop'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'henrik/vim-indexed-search'
" colorschemes
Plug 'morhetz/gruvbox'
Plug 'fxn/vim-monochrome'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'matze/vim-move'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-endwise'

call plug#end()

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
let g:lightline = { 'colorscheme': 'one' }

set termguicolors

" set background=dark
" let g:gruvbox_italic=1
" colorscheme gruvbox

" set background=dark
" let g:one_allow_italics = 1
" colorscheme one

let g:nord_italic = 1
let g:nord_italic_comments = 1
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

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

let mapleader = ' '
nnoremap <Leader><Leader> <C-^>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>e :e<CR>

map <C-n> :NERDTreeToggle<CR>

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=99
inoremap jj <Esc>
set relativenumber
