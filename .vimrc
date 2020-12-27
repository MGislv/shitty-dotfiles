set nocompatible
filetype plugin on
set showcmd
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()
set number
let g:dracula_colorterm = 0
colorscheme dracula
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }
set path+=**
set wildmenu
