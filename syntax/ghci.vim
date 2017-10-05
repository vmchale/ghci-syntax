if exists('b:current_syntax')
    finish
endif

syntax keyword ghci prompt
syntax match ghciDefinition ":set"
syntax match ghciDefinition ":def"
syntax match ghciFlag "\v\+[A-Za-z]"
syntax match stringSpecial '\\"'
syntax region ghciString start='"' end='"' contains=stringSpecial

highlight link ghciDefinition Structure
highlight link ghciFlag Special
highlight link stringSpecial Special
highlight link ghciString String

let b:current_syntax = 'ghci'
