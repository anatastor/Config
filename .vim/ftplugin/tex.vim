
" compile latex
map <F4> :!clear && pdflatex -draftmode ./%< && pdflatex ./%<
map <F8> :!clear && pdflatex -draftmode ./%< && biber %< && pdflatex ./%<
