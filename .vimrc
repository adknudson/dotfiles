set nocompatible             " required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vudle.vim
call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    " add all your plugins here
    Plugin 'jeffkreeftmeijer/vim-numbertoggle'

call vundle#end()            " required
filetype plugin indent on    " required

" set new splits right/below
set splitright
set splitbelow

" navigate splits using vim-like keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set gutter numbering
set number relativenumber
