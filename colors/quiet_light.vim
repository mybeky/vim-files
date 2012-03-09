" Vim color file
" Converted from Textmate theme Quiet Light using Coloration v0.2.5 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Quiet Light"

hi Cursor  guifg=NONE guibg=#000000 gui=NONE
hi Visual  guifg=NONE guibg=#c9d0d9 gui=NONE
hi CursorLine  guifg=NONE guibg=#e4f6d4 gui=NONE
hi CursorColumn  guifg=NONE guibg=#e4f6d4 gui=NONE
hi LineNr  guifg=#949494 guibg=#f5f5f5 gui=NONE
hi VertSplit  guifg=#d0d0d0 guibg=#d0d0d0 gui=NONE
hi MatchParen  guifg=#4b83cd guibg=NONE gui=NONE
hi StatusLine  guifg=#333333 guibg=#d0d0d0 gui=bold
hi StatusLineNC  guifg=#333333 guibg=#d0d0d0 gui=NONE
hi Pmenu  guifg=NONE guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#c9d0d9 gui=NONE
hi IncSearch  guifg=NONE guibg=#ccb9d8 gui=NONE
hi Search  guifg=NONE guibg=#ccb9d8 gui=NONE
hi Directory  guifg=#ab6526 guibg=NONE gui=NONE
hi Folded  guifg=#aaaaaa guibg=#f5f5f5 gui=NONE

hi Normal  guifg=#333333 guibg=#f5f5f5 gui=NONE
hi Boolean  guifg=#ab6526 guibg=NONE gui=NONE
hi Character  guifg=#ab6526 guibg=NONE gui=NONE
hi Comment  guifg=#aaaaaa guibg=NONE gui=italic
hi Conditional  guifg=#4b83cd guibg=NONE gui=NONE
hi Constant  guifg=#ab6526 guibg=NONE gui=NONE
hi Define  guifg=#4b83cd guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#ab6526 guibg=NONE gui=NONE
hi Function  guifg=#aa3731 guibg=NONE gui=bold
hi Identifier  guifg=#7a3e9d guibg=NONE gui=NONE
hi Keyword  guifg=#4b83cd guibg=NONE gui=NONE
hi Label  guifg=#448c27 guibg=NONE gui=NONE
hi NonText  guifg=#aaaaaa guibg=#e4f6d4 gui=NONE
hi Number  guifg=#ab6526 guibg=NONE gui=NONE
hi Operator  guifg=#777777 guibg=NONE gui=NONE
hi PreProc  guifg=#4b83cd guibg=NONE gui=NONE
hi Special  guifg=#333333 guibg=NONE gui=NONE
hi SpecialKey  guifg=#aaaaaa guibg=#e4f6d4 gui=NONE
hi Statement  guifg=#4b83cd guibg=NONE gui=NONE
hi StorageClass  guifg=#7a3e9d guibg=NONE gui=NONE
hi String  guifg=#448c27 guibg=NONE gui=NONE
hi Tag  guifg=#4b83cd guibg=NONE gui=NONE
hi Title  guifg=#333333 guibg=NONE gui=bold
hi Todo  guifg=#aaaaaa guibg=NONE gui=inverse,bold,italic
hi Type  guifg=#7a3e9d guibg=NONE gui=bold
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#4b83cd guibg=NONE gui=NONE
hi rubyFunction  guifg=#aa3731 guibg=NONE gui=bold
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#ab6526 guibg=NONE gui=NONE
hi rubyConstant  guifg=#7a3e9d guibg=NONE gui=bold
hi rubyStringDelimiter  guifg=#448c27 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=#7a3e9d guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#ab6526 guibg=NONE gui=NONE
hi rubyInclude  guifg=#4b83cd guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#7a3e9d guibg=NONE gui=NONE
hi rubyRegexp  guifg=#4b83cd guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#4b83cd guibg=NONE gui=NONE
hi rubyEscape  guifg=#777777 guibg=NONE gui=NONE
hi rubyControl  guifg=#4b83cd guibg=NONE gui=NONE
hi rubyClassVariable  guifg=#7a3e9d guibg=NONE gui=NONE
hi rubyOperator  guifg=#777777 guibg=NONE gui=NONE
hi rubyException  guifg=#4b83cd guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=#ab6526 guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#7a3e9d guibg=NONE gui=bold
hi rubyRailsARAssociationMethod  guifg=#aa3731 guibg=NONE gui=bold
hi rubyRailsARMethod  guifg=#aa3731 guibg=NONE gui=bold
hi rubyRailsRenderMethod  guifg=#aa3731 guibg=NONE gui=bold
hi rubyRailsMethod  guifg=#aa3731 guibg=NONE gui=bold
hi erubyDelimiter  guifg=#777777 guibg=NONE gui=NONE
hi erubyComment  guifg=#aaaaaa guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#aa3731 guibg=NONE gui=bold
hi htmlTag  guifg=#91b3e0 guibg=NONE gui=NONE
hi htmlEndTag  guifg=#91b3e0 guibg=NONE gui=NONE
hi htmlTagName  guifg=#91b3e0 guibg=NONE gui=NONE
hi htmlArg  guifg=#91b3e0 guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#ab6526 guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#7a3e9d guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#aa3731 guibg=NONE gui=bold
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#4b83cd guibg=NONE gui=NONE
hi yamlAnchor  guifg=#7a3e9d guibg=NONE gui=NONE
hi yamlAlias  guifg=#7a3e9d guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#448c27 guibg=NONE gui=NONE
hi cssURL  guifg=#7a3e9d guibg=NONE gui=NONE
hi cssFunctionName  guifg=#aa3731 guibg=NONE gui=bold
hi cssColor  guifg=#ab6526 guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=NONE guibg=NONE gui=NONE
hi cssClassName  guifg=NONE guibg=NONE gui=NONE
hi cssValueLength  guifg=#ab6526 guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#448c27 guibg=NONE gui=NONE
hi cssBraces  guifg=#777777 guibg=NONE gui=NONE
