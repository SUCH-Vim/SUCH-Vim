" Vim syntax file

let b:current_syntax = "suchhelp"

syntax keyword suchmenuKeyword  MENU PYTHON JAVASCRIPT CSS HTML GO C TEX JSON MOTIONS
syntax keyword suchmenuNumber 1 2 3 4 5 6 7 8 9 
syntax match suchOperation "\v-"
syntax match suchDelimiter "\v_"

syntax region suchKeyBinding start=/\v\</ end=/\v:/

highlight link suchmenuKeyword Bold
highlight link suchDelimiter Bold 
highlight link suchKeyBinding Question
highlight link suchOperation Number
highlight link suchmenuNumber Number
