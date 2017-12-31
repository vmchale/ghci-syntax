if exists('b:current_syntax')
    finish
endif

syntax keyword ghciKeyword prompt
syntax match ghciDefinition ":m"
syntax match ghciDefinition ":a"
syntax match ghciDefinition ":load"
syntax match ghciDefinition ":set"
syntax match ghciDefinition ":def"
syntax match ghciDefinition ":add"
syntax match ghciDefinition ":abandon"
syntax match ghciDefinition ":back"
syntax match ghciDefinition ":break"
syntax match ghciDefinition ":browse"
syntax match ghciDefinition ":cd"
syntax match ghciDefinition ":cmd"
syntax match ghciDefinition ":continue"
syntax match ghciDefinition ":ctags"
syntax match ghciDefinition ":etags"
syntax match ghciDefinition ":delete"
syntax match ghciDefinition ":edit"
syntax match ghciDefinition ":force"
syntax match ghciDefinition ":forward"
syntax match ghciDefinition ":help"
syntax match ghciDefinition ":history"
syntax match ghciDefinition ":info"
syntax match ghciDefinition ":kind"
syntax match ghciDefinition ":main"
syntax match ghciDefinition ":print"
syntax match ghciDefinition ":quit"
syntax match ghciDefinition ":reload"
syntax match ghciDefinition ":run"
syntax match ghciDefinition ":show"
syntax match ghciDefinition ":step"
syntax match ghciDefinition ":sprint"
syntax match ghciDefinition ":trace"
syntax match ghciDefinition ":type"
syntax match ghciDefinition ":undef"
syntax match ghciDefinition ":unset"
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
