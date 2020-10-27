call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'

Plug 'arcticicestudio/nord-vim'

call plug#end()

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

:set number
:set nohlsearch
colorscheme nord
