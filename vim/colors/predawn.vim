" Vim color file
" Converted from Textmate theme Predawn using Coloration v0.4.0 (http://github.com/sickill/coloration)
" Further modified by Ran

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "predawn"

hi Cursor       ctermfg=235  ctermbg=209 cterm=NONE guifg=#282828 guibg=#f18260 gui=NONE
hi Visual       ctermfg=NONE ctermbg=239 cterm=NONE guifg=NONE    guibg=#4c4c4c gui=NONE
hi CursorLine   ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE    guibg=#3c3c3c gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE    guibg=#3c3c3c gui=NONE
hi ColorColumn  ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE    guibg=#3c3c3c gui=NONE
""hi LineNr ctermfg=245 ctermbg=237 cterm=NONE guifg=#8d8d8d guibg=#3c3c3c gui=NONE
  hi LineNr ctermfg=241 ctermbg=232 cterm=NONE guifg=#857b6f    guibg=#080808 gui=NONE

hi VertSplit    ctermfg=241  ctermbg=241  cterm=NONE guifg=#626262 guibg=#626262 gui=NONE
hi MatchParen   ctermfg=215  ctermbg=NONE cterm=underline guifg=#f49d62 guibg=NONE gui=underline
hi StatusLine   ctermfg=231  ctermbg=241  cterm=bold guifg=#f1f1f1 guibg=#626262 gui=bold
hi StatusLineNC ctermfg=231  ctermbg=241  cterm=NONE guifg=#f1f1f1 guibg=#626262 gui=NONE
hi Pmenu        ctermfg=109  ctermbg=NONE cterm=NONE guifg=#92bfbf guibg=NONE gui=NONE
hi PmenuSel     ctermfg=NONE ctermbg=239  cterm=NONE guifg=NONE    guibg=#4c4c4c gui=NONE
hi IncSearch    ctermfg=235  ctermbg=152  cterm=NONE guifg=#282828 guibg=#bddcdc gui=NONE
""hi Search     ctermfg=NONE ctermbg=241  cterm=NONE guifg=NONE    guibg=#626262 gui=NONE
" hi Search     ctermfg=NONE ctermbg=NONE cterm=inverse
  hi Search     ctermfg=7    ctermbg=56   cterm=NONE guifg=NONE    guibg=#626262 gui=NONE
hi Directory    ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi Folded       ctermfg=243  ctermbg=235  cterm=NONE guifg=#777777 guibg=#282828 gui=NONE

""hi Normal   ctermfg=231  ctermbg=235 cterm=NONE guifg=#f1f1f1 guibg=#282828 gui=NONE
  hi Normal   ctermfg=231  ctermbg=234 cterm=NONE guifg=#f1f1f1 guibg=#212121 gui=NONE
hi Boolean      ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi Character    ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi Comment      ctermfg=243  ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE
hi Conditional  ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi Constant     ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi Define       ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi DiffAdd      ctermfg=231  ctermbg=64   cterm=bold guifg=#f1f1f1 guibg=#46830d gui=bold
hi DiffDelete   ctermfg=88   ctermbg=NONE cterm=NONE guifg=#8b0808 guibg=NONE gui=NONE
hi DiffChange   ctermfg=231  ctermbg=23   cterm=NONE guifg=#f1f1f1 guibg=#243958 gui=NONE
hi DiffText     ctermfg=231  ctermbg=24   cterm=bold guifg=#f1f1f1 guibg=#204a87 gui=bold
hi ErrorMsg     ctermfg=167  ctermbg=NONE cterm=NONE guifg=#cf5340 guibg=NONE gui=NONE
hi WarningMsg   ctermfg=167  ctermbg=NONE cterm=NONE guifg=#cf5340 guibg=NONE gui=NONE
hi Float        ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi Function     ctermfg=109  ctermbg=NONE cterm=NONE guifg=#92bfbf guibg=NONE gui=NONE
hi Identifier   ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi Keyword      ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi Label        ctermfg=152  ctermbg=NONE cterm=NONE guifg=#bddcdc guibg=NONE gui=NONE
""hi NonText  ctermfg=235 ctermbg=235 cterm=NONE guifg=#282828 guibg=#282828 gui=NONE
  hi NonText  ctermfg=235 ctermbg=233 cterm=NONE guifg=#282828 guibg=#141414 gui=NONE
hi Number       ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi Operator     ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi PreProc      ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi Special      ctermfg=231  ctermbg=NONE cterm=NONE guifg=#f1f1f1 guibg=NONE gui=NONE
hi SpecialKey   ctermfg=209  ctermbg=237 cterm=NONE guifg=#f18260 guibg=#3c3c3c gui=NONE
hi Statement    ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi StorageClass ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi String       ctermfg=152  ctermbg=NONE cterm=NONE guifg=#bddcdc guibg=NONE gui=NONE
hi Tag          ctermfg=109  ctermbg=NONE cterm=NONE guifg=#92bfbf guibg=NONE gui=NONE
hi Title        ctermfg=231  ctermbg=NONE cterm=bold guifg=#f1f1f1 guibg=NONE gui=bold
""hi Todo         ctermfg=243  ctermbg=NONE cterm=inverse,bold guifg=#777777 guibg=NONE gui=inverse,bold
  hi Todo         ctermfg=6    ctermbg=NONE cterm=bold guifg=#777777 guibg=NONE gui=inverse,bold
hi Type         ctermfg=109  ctermbg=NONE cterm=NONE guifg=#92bfbf guibg=NONE gui=NONE
hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi htmlTag      ctermfg=150  ctermbg=NONE cterm=NONE guifg=#b4d388 guibg=NONE gui=NONE
hi htmlEndTag   ctermfg=150  ctermbg=NONE cterm=NONE guifg=#b4d388 guibg=NONE gui=NONE
hi htmlTagName  ctermfg=150  ctermbg=NONE cterm=NONE guifg=#b4d388 guibg=NONE gui=NONE
hi htmlArg      ctermfg=150  ctermbg=NONE cterm=NONE guifg=#b4d388 guibg=NONE gui=NONE
hi htmlSpecialChar     ctermfg=209  ctermbg=NONE cterm=NONE guifg=#f18260 guibg=NONE gui=NONE
hi javaScriptFunction  ctermfg=228  ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi javaScriptBraces    ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey             ctermfg=109  ctermbg=NONE cterm=NONE guifg=#92bfbf guibg=NONE gui=NONE
hi yamlAnchor          ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi yamlAlias           ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi yamlDocumentHeader  ctermfg=152  ctermbg=NONE cterm=NONE guifg=#bddcdc guibg=NONE gui=NONE
hi cssURL              ctermfg=215  ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=215 ctermbg=NONE cterm=NONE guifg=#f49d62 guibg=NONE gui=NONE
hi cssColor ctermfg=228 ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=109 ctermbg=NONE cterm=NONE guifg=#92bfbf guibg=NONE gui=NONE
hi cssClassName ctermfg=109 ctermbg=NONE cterm=NONE guifg=#92bfbf guibg=NONE gui=NONE
hi cssValueLength ctermfg=228 ctermbg=NONE cterm=NONE guifg=#ecec89 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=150 ctermbg=NONE cterm=NONE guifg=#b4d388 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

hi link NERDTreeDir Normal
hi link NERDTreeDirSlash Normal
