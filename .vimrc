set number                      "Show line numbers
set wrap                        "Visually wrap line, without changing buffer
set ai                          "Auto Indent
set si                          "Smart Indent, recognizes language Syntax
set tabstop=4                   "Number of auto indent spaces
set shiftwidth=4                "Number of spaces per tab

syntax on
filetype plugin indent on
colorscheme slate

" :W saves readonly file
command W :execute ':silent w !sudo tee % > /dev/null' <bar> :edit!
