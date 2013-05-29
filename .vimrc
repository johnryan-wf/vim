" John Ryan's VIMrc

call pathogen#infect()

filetype plugin on
syntax on
colorscheme molokai " use pyte for white bg
" colorscheme zenburn
" colorscheme aiseered " for non-256 terminals

set tabstop=2
set expandtab
set wrap
set number numberwidth=2

" Change <Leader> to , for NERDCommenter
let mapleader = ","

" I hate beeping
set noerrorbells
set novisualbell

" golang
" set rtp+=$GOROOT/misc/vim

