if exists('b:current_syntax')
    finish
endif

syntax keyword ghciKeyword prompt
syntax match ghciDefinition ":set"
syntax match ghciDefinition ":def"
syntax match ghciFlag "\v\+[A-Za-z]"
syntax match ghcFlag "\v-[A-za-z]"
syntax match stringSpecial '\\"'
" syntax match ghciOperator "\v(\\->\$\.\+\*)*"
syntax match ghciIdentifier "\v[a-z][A-Za-z]*"
syntax region ghciString start='"' end='"' contains=stringSpecial
syntax match ghciComment "\v--.*$"

" highlight link ghciOperator Number
highlight link ghcFlag Special
highlight link ghciFlag Number
highlight link ghciKeyword Keyword
highlight link ghciDefinition Structure
highlight link ghciFlag Special
highlight link stringSpecial Special
highlight link ghciString Comment
highlight link ghciComment Comment

let b:current_syntax = 'ghci'
