" Vim syntax file for my DnD Notes
" Author: Torsten Lehmann
" Mail: anatas.torsten@gmx.de
" Latest Revision: 2023-02-19


if exists("b:current_syntax")
  finish
endif


" Roll Dice
syn match dndRoll '\d\+[d,D]\d\+'
hi def link dndRoll dndAtt

" Check on Attributes and their DC
syn keyword dndAtt STR DEX CON WIS INT CHA nextgroup=dndAttDC skipwhite
syn match dndAttDC 'DC \d\+' contained
hi def dndAtt cterm=bold guifg=#FFA500
hi def link dndAttDC dndAtt

" Check on Skills and their DC
syn keyword dndCheck Acrobatics AnimalHandling Arcana Athletics Deception History Insight Intimidation Investigation Medicine Nature Perception Performance Persuasion Religion SleightOfHand Stealth Survival skipwhite nextgroup=dndCheckDC
syn match dndCheckDC 'DC \d\+' contained
hi def dndCheck cterm=bold,italic guifg=#FFA500
hi def link dndCheckDC dndCheck

" Check on Tool and other Proficencies and their DC
syn keyword dndTool ThievesTools skipwhite nextgroup=dndToolDC
syn match dndToolDC '\w\+ DC \d\+' contained
hi def dndTool cterm=italic guifg=#FFA500
hi def link dndToolDC dndTool

" Saving Throws
syn keyword dndST ST nextgroup=dndSTDC skipwhite
syn match dndSTCHK '(\bSTR\b)|(\bDEX\b)' contained
syn match dndSTDC '\w\+ DC \d\+' contained
hi def dndST cterm=bold guifg=#B22222
hi def link dndSTCHK dndST
hi def link dndSTDC dndST


" Rule Books and Page number
syn keyword dndBook PHB DMG MM MToF VGM XGTE MMV Tascha skipwhite nextgroup=dndPage
syn match dndPage '\d\+' contained
hi def dndBook cterm=italic guifg=#FF7F50
hi def link dndPage dndBook


" Headline
syn region dndHead start='//' end='//'
hi def dndHead cterm=bold guibg=#FFD700 guifg=#000000

" NPC Names
syn region dndName start='"' end='"'  
hi def dndName cterm=bold guifg=#228B22

" Location Names
syn region dndLocation start='<<' end='>>'
hi def dndLocation cterm=italic guifg=#00FF00

" Item Names
syn region dndItem start='\'\'' end='\'\''
hi def dndItem cterm=italic guifg=#00FF7F

" Spell Names
syn region dndSpell start='``' end='``'
hi def dndSpell guifg=#FF1493

" Description
syn region dndDescr start='""' end='""' 
hi def dndDescr cterm=italic guifg=#00BFFF

" Loot
syn region dndLoot start='\*\*' end='\*\*' contains=dndItem,dndBook
hi def dndLoot guifg=#FFD700


" further Information
syn region dndInfo start='++' end='++' contains=dndName,dndLocation,dndItem
hi def dndInfo cterm=italic guifg=#228B22

" Enctounter and Fights
syn keyword dndEncounter Encounter Kampf
hi def dndEncounter cterm=bold guifg=#FF3A3A



" Comments & TODO
syn match dndComment "#.*$" contains=dndTodo,dndName,dndLocation,dndItem
syn keyword dndTodo contained TODO todo 
hi def dndComment guifg=#EE82EE
hi def dndTodo cterm=bold guibg=#EE82EE guifg=#000000


