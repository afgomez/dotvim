" Vim color file
" Converted from Textmate theme Cobalt copy using Coloration v0.2.5 (http://github.com/sickill/coloration)
" FIXME: Improve readibilty of the file aligning things


set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Cobalt"

hi Cursor  guifg=NONE guibg=#c76045 gui=NONE
hi Visual  guifg=NONE guibg=#875035 gui=NONE
hi CursorLine  guifg=NONE guibg=#050f1c gui=NONE
hi CursorColumn  guifg=NONE guibg=#050f1c gui=NONE
hi LineNr  guifg=#848b95 guibg=#000000 gui=NONE
hi VertSplit  guifg=#374253 guibg=#374253 gui=NONE
hi MatchParen  guifg=NONE guibg=#768ec9 gui=NONE
hi StatusLine  guifg=#ffffff guibg=#374253 gui=bold
hi StatusLineNC  guifg=#999999 guibg=#333333 gui=NONE
hi Pmenu  guifg=#ffdd00 guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#875035 gui=NONE
hi IncSearch  guifg=#000000 guibg=#ffff00 gui=NONE
hi Search  guifg=#000000 guibg=#ffff00 gui=NONE
hi Directory  guifg=#ff628c guibg=NONE gui=NONE
hi Folded  guifg=#2f8afa guibg=#08162b gui=NONE

hi Normal  guifg=#ffffff guibg=#061e39 gui=NONE
hi Boolean  guifg=#ff628c guibg=NONE gui=NONE
hi Character  guifg=#ff628c guibg=NONE gui=NONE
hi Comment  guifg=#2f8afa guibg=NONE gui=italic
hi Conditional  guifg=#ff9d00 guibg=NONE gui=NONE
hi Constant  guifg=#ff628c guibg=NONE gui=NONE
hi Define  guifg=#ff9d00 guibg=NONE gui=NONE
hi ErrorMsg  guifg=#f8f8f8 guibg=#800f00 gui=NONE
hi WarningMsg  guifg=#f8f8f8 guibg=#800f00 gui=NONE
hi Float  guifg=#ff628c guibg=NONE gui=NONE
hi Function  guifg=#ffdd00 guibg=NONE gui=NONE
hi Identifier  guifg=#ffee80 guibg=NONE gui=NONE
hi Keyword  guifg=#ff9d00 guibg=NONE gui=NONE
hi Label  guifg=#3ad900 guibg=NONE gui=NONE
hi NonText  guifg=#2b3749 guibg=NONE gui=NONE
hi Number  guifg=#ff628c guibg=NONE gui=NONE
hi Operator  guifg=#ff9d00 guibg=NONE gui=NONE
hi PreProc  guifg=#ff9d00 guibg=NONE gui=NONE
hi Special  guifg=#ffffff guibg=NONE gui=NONE
hi SpecialKey  guifg=#2b3749 guibg=#050f1c gui=NONE
hi Statement  guifg=#ff9d00 guibg=NONE gui=NONE
hi StorageClass  guifg=#ffee80 guibg=NONE gui=NONE
hi String  guifg=#3ad900 guibg=NONE gui=NONE
hi Tag  guifg=#ffdd00 guibg=NONE gui=NONE
hi Title  guifg=#ffffff guibg=NONE gui=bold
hi Todo  guifg=#2fffff guibg=NONE gui=bold,italic
hi Type  guifg=#ffdd00 guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline

highlight DiffAdd cterm=NONE ctermfg=NONE ctermbg=Green gui=NONE guifg=NONE guibg=#154f00
highlight DiffDelete cterm=NONE ctermfg=NONE ctermbg=Red gui=NONE guifg=NONE guibg=#4c0900
highlight DiffChange cterm=NONE ctermfg=NONE ctermbg=Yellow gui=NONE guifg=NONE guibg=#806f00
highlight DiffText cterm=NONE ctermfg=NONE ctermbg=Magenta gui=NONE guifg=NONE guibg=Magenta 

hi rubyClass  guifg=#ff9d00 guibg=NONE gui=NONE
hi rubyFunction  guifg=#ffdd00 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#ff628c guibg=NONE gui=NONE
hi rubyConstant  guifg=#80ffbb guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#3ad900 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=#bbbbbb guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#bbbbbb guibg=NONE gui=NONE
hi rubyInclude  guifg=#ff9d00 guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#bbbbbb guibg=NONE gui=NONE
hi rubyInterpolation guifg=#9eff80 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter guifg=#9eff80 guibg=NONE gui=NONE
hi rubyRegexp  guifg=#80ffc2 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#80ffc2 guibg=NONE gui=NONE
hi rubyEscape  guifg=#ff628c guibg=NONE gui=NONE
hi rubyControl  guifg=#ff9d00 guibg=NONE gui=NONE
hi rubyClassVariable  guifg=#cccccc guibg=NONE gui=NONE
hi rubyOperator  guifg=#ff9d00 guibg=NONE gui=NONE
hi rubyException  guifg=#ff9d00 guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=#ff80e1 guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#80ffbb guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#ffb054 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#ffb054 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#ffb054 guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=#ffb054 guibg=NONE gui=NONE
hi erubyDelimiter  guifg=#e1efff guibg=NONE gui=NONE
hi erubyComment  guifg=#2f8afa guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#ffb054 guibg=NONE gui=NONE
hi htmlTag  guifg=#9effff guibg=NONE gui=NONE
hi htmlEndTag  guifg=#9effff guibg=NONE gui=NONE
hi htmlTagName  guifg=#9effff guibg=NONE gui=NONE
hi htmlArg  guifg=#9effff guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#ff628c guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#ffee80 guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#ffb054 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#ffdd00 guibg=NONE gui=NONE
hi yamlAnchor  guifg=#cccccc guibg=NONE gui=NONE
hi yamlAlias  guifg=#cccccc guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#3ad900 guibg=NONE gui=NONE
hi cssTagName guifg=#9effff guibg=NONE gui=NONE
hi cssIdentifier guifg=#ff9d00 guibg=NONE gui=NONE
hi cssClassName  guifg=#5fe460 guibg=NONE gui=NONE
hi cssDefinition guifg=#9df39d guibg=NONE gui=NONE
hi cssFunctionName  guifg=#ffb054 guibg=NONE gui=NONE
hi cssColor  guifg=#ff628c guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#ffdd00 guibg=NONE gui=NONE
hi cssValueLength  guifg=#ff628c guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#eb939a guibg=NONE gui=NONE
hi cssBraces  guifg=#ffffff guibg=NONE gui=NONE
