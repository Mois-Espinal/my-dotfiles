" use the Gruvbox dark theme
set background=dark
" some basic configurations
colorscheme embark
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
"enable folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"show file name in window title bar
set title
"use default line numbers
        set number
        au BufReadPost * set number
set showcmd
set scrolloff=3
"very good configuration for me personally
command Nvimlike vsplit | :Explore
set spell
"add some basic mapping
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
"change cursor shape
  if &term =~ '^xterm'
    " normal mode
    let &t_EI .= "\<Esc>[0 q"
    " insert mode
    let &t_SI .= "\<Esc>[6 q"
  endif

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
