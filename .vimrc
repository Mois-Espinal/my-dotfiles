" use the Gruvbox dark theme
set background=dark
" some basic configurations
colorscheme gruvbox
set nocompatible
set clipboard=unnamed
set wildmenu
set esckeys
set ttyfast
set encoding=utf-8
set exrc
set secure
syntax on
set cursorline
set tabstop=2
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set noerrorbells
set nostartofline
set ruler
set shortmess=atI
" Show the current mode
set showmode
"show file name in window title bar
set title
"use default line numbers
if exists("&number")
        set number
        au BufReadPost * set number
endif
set showcmd
set scrolloff=3
"very good configuration for me personally
set spell
"Plugins
call plug#begin('~/vimplugins')
"LSP servers
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
"just for prettiness
Plug 'itchyny/lightline.vim'
call plug#end()
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
