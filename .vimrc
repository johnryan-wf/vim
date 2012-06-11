" John Ryan's VIMrc

call pathogen#infect()

filetype plugin on

syntax on

colorscheme wombat256

set tabstop=4

set expandtab

set wrap
set number numberwidth=2

" Change <Leader> to , for NERDCommenter
let mapleader = ","

" Open nerdtree when vim starts, but only after all initialization
" is finished.
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" I hate beeping
set noerrorbells
set novisualbell

" Close NERDTree if it is the last buffer
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
