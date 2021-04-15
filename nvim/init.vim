call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'

Plug 'arcticicestudio/nord-vim'

call plug#end()

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
set number
colorscheme nord
let g:nord_italic_comments = 1
let g:nord_italic = 1
set nocompatible
filetype plugin on
set showcmd
set path+=**
set wildmenu
