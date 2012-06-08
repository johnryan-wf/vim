" John Ryan's VIMrc

call pathogen#infect()

syntax on

set wrap
set number numberwidth=2

" pressing the '-' key will move the line down
map - ddp

" Pressing '_' will move the line up
map _ ddkkp

nmap \ dd

vmap \ U

imap <c-d> <esc>ddi
