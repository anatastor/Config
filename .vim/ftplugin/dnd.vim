
au BufRead,BufNewFile *.dnd set filetype=dnd

set termguicolors


imap <INSERT>s i★ 
imap <INSERT>a i▶ 

imap <INSERT>1 ■ 
imap <INSERT>2 ◆
imap <INSERT>3 • 


map ?n "zyi":call PathToFile()<Return>:exe "tabe ".@r."Character/".@z.".dnd"<Return>
map ?l "zyi<:call PathToFile()<Return>:exe "tabe ".@r."Location/".@z.".dnd"<Return>
map ?i "zyi':call PathToFile()<Return>:exe "tabe ".@r."Item/".@z.".dnd"<Return>


function PathToFile()
  let s = '' " string iterator
  let sp = '' " previous string iterator
  let r = '' " result

  for s in split (getcwd (), '\/')
    let r = join ([r, s], '/')
    if (sp == "_Kampagne" || sp == "Kampagne")
      break
    endif
    let sp = s
  endfor
  let r = join ([r, '_world/'], '/')
  let @r = r
endfunction
