
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab


" make
imap <F5> :w<CR>:!clear && make<CR>
map <F5> :!clear && make<CR>

map <F8> :!clear && gcc main.c<CR>


vmap c :norm I//<CR>
vmap C :norm wdw<CR>
