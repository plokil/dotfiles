" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of 
" file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Line numbers
set number
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Tabs are 2 spaces.
set tabstop=2
set shiftwidth=2
set expandtab

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Don't show the mode you are on the last line because Lightline already shows
" it.
set noshowmode

" Enable auto completion menu after pressing TAB.
set wildmenu

" Show partial command you type in the last line of the screen.
set showcmd

" Use highlighting when doing a search.
set hlsearch

" Update sign column every quarter second.
set updatetime=250

" For Lightline status bar.
set laststatus=2

" Highlight the 100th column.
set colorcolumn=100

" Set the system clipboard
set clipboard=unnamedplus 

" Don't wrap long lines
:set nowrap

" PLUGINS {{{

call plug#begin('~/.vim/plugged')

	Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
	"Plug 'dense-analysis/ale'
	Plug 'airblade/vim-gitgutter'
	Plug 'itchyny/lightline.vim'
	"Plug 'crusoexia/vim-monokai'
	Plug 'sheerun/vim-polyglot'
	Plug 'preservim/nerdcommenter'
	Plug 'Raimondi/delimitMate'
	Plug 'ap/vim-css-color'
	"Plug 'anthillape/lightline-material-monokai'

call plug#end()

" }}}

" VIMSCRIPT {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" colourscheme
colorscheme moonfly
let g:lightline = { 'colorscheme': 'moonfly' }

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" }}}
