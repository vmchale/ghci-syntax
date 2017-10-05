if exists('b:current_syntax')
    finish
endif

syntax match ghciKeyword ":set"
syntax match ghciKeyword ":def"
syntax match ghciFlag "\v\+[A-Za-z]"

highlight link ghciKeyword Keyword
highlight link ghciFlag Special

let b:current_syntax = 'ghci'
