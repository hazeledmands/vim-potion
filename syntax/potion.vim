if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "potion"

syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

syntax match potionOperator "*"
syntax match potionOperator "/"
syntax match potionOperator "+"
syntax match potionOperator "-"
syntax match potionOperator "?"
syntax match potionOperator "="
syntax match potionOperator "*="
syntax match potionOperator "/="
syntax match potionOperator "+="
syntax match potionOperator "-="
syntax match potionOperator ":"
syntax match potionOperator "\."
syntax match potionOperator ","

syntax match potionNumber "\v\d+"
syntax match potionNumber "\v\d+\.\d+"
syntax match potionNumber "\v0x[a-f]+"
syntax match potionNumber "\v\d+e[-+]?\d+"
syntax match potionNumber "\v\d+\.\d+e[-+]?\d+"

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/

syntax match potionComment "#.*$"

highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionComment Comment
highlight link potionOperator Operator
highlight link potionNumber Number
highlight link potionString String
