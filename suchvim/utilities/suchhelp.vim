" Vim syntax file

let b:current_syntax = "suchhelp"

syntax keyword suchmenuKeyword  MENU PYTHON JAVASCRIPT CSS HTML GO C TEX JSON MOTIONS
syntax match suchmenuNumber "\v[0-9]"
syntax match suchOperation "\v-"
syntax match suchDelimiter "\v_"

syntax match suchArrow "\v→"
syntax match suchKeyBinding "\v[a-zA-Z0-9\<\>;]*  → " contains=suchArrow


highlight link suchmenuKeyword Bold
highlight link suchDelimiter Bold 
highlight link suchArrow Operator
highlight link suchKeyBinding Function
highlight link suchOperation Number
highlight link suchmenuNumber Number
