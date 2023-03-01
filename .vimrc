
set encoding=utf-8
syntax on
set number
set autochdir
set autoindent
set clipboard=unnamedplus
filetype plugin indent on

" TAB
set shiftwidth=2
set softtabstop=2

" Background
set background=dark


" Search
set incsearch
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Saving and Closing
map <Esc><Esc> :w<CR>
map Q :q!<CR>


let g:tex_flavour='latex'

" change color of comments to a light blue
hi comment ctermfg=lightblue

" change highlighting for spellchecking
hi clear SpellBad
hi SpellBad cterm=underline

