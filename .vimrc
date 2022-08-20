set number
set ai
set si
set wrap
set tabstop=4
set shiftwidth=4
filetype plugin indent on
syntax on
colorscheme slate
syntax on

" :W saves readonly file
command W :execute ':silent w !sudo tee % > /dev/null' <bar> :edit!
