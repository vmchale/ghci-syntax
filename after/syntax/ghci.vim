scriptencoding utf-8

let g:ghci_conceal = get(g:, 'ghci_conceal', 'false')

if g:ghci_conceal ==? 'true'

    syntax match lamba '\\' conceal cchar=λ

endif

hi! link Conceal Operator

setlocal conceallevel=1
