" use the Gruvbox dark theme
set background=dark
" some basic configurations 
colorscheme gruvbox
set nocompatible
set clipboard=unnamed
"auto completion
set wildmenu
"being able to use esc keys
set esckeys
"send characters for redraw
set ttyfast
"set encoding of characters to utf-8
set encoding=utf-8
"these features are mostly related to ssh in some way
set exrc
set secure
"syntax highlighting
syntax on
set cursorline
" personally i prefer tabstop at 2
set tabstop=2
"highlights search
set hlsearch
set incsearch
set laststatus=2
"allows support for mouse in all forms
set mouse=a
"QOL settings
set noerrorbells
set nostartofline
set ruler
set shortmess=atI
" Show the current mode
set showmode
" line numbers
set number
" enabling title setting but i never use it
set title

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
#setting lsp servers up
call plug#end()
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
