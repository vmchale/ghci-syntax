if exists('b:current_syntax')
    finish
endif

syntax keyword ghciKeyword prompt
syntax match ghciDefinition ":m"
syntax match ghciDefinition ":load"
syntax match ghciDefinition ":set"
syntax match ghciDefinition ":def"
syntax match ghciFlag "\v\+[A-Za-z]"
syntax match ghcFlag "\v-[A-za-z\-]*"
syntax match stringSpecial '\\"'
syntax match ghciParens "(\|)\|\[\|\]\|,"
syntax match ghciOperator "[-!#$%&*+/<=>\?@\\^|~:.]\+\|\<_\>" contains=ghciFlag,ghcFlag,ghciDefinition
syntax match ghciIdentifier "\v[a-z][A-Za-z]*" contains=ghciDefinition,ghciFlag,ghcFlag,ghciKeyword
syntax region ghciString start='"' end='"' contains=stringSpecial
syntax match ghciModule "\v[A-Za-z\.]+" contains=ghciDefinition,ghciFlag,ghcFlag,ghciKeyword
syntax match ghciComment "\v--.*$"

highlight link ghciModule Underlined
highlight link ghciParens Special
highlight link ghciOperator Number
highlight link ghciIdentifier Identifier
highlight link ghcFlag String
highlight link ghciFlag Number
highlight link ghciKeyword Keyword
highlight link ghciDefinition Structure
highlight link ghciFlag Special
highlight link stringSpecial Special
highlight link ghciString Comment
highlight link ghciComment Comment

let b:current_syntax = 'ghci'
