" Vim color scheme Tone
" ----------------------------------------------------------------------
"
" Repository: https://github.com/cseelus/vim-colors-tone
" Author:     Chris Seelus (@cseelus)
"
" colors
" --------------------------
:let _white       = '#ebebff'
:let _d_white     = '#bdbde8'
:let _gray_light  = '#717090'
:let _gray        = '#615f80'
:let _gray_dark   = '#49515f'
:let _semiblack   = '#222234'
:let _black       = '#181827'

:let _aubergine   = '#c59dc5'
:let _turquoise   = '#1fffd2'
:let _d_turquoise = '#228577'
:let _l_sky       = '#9fd4ff'
:let _sky         = '#6cbeff'
:let _d_sky       = '#5f94bf'
:let _orange      = '#fc929e'
:let _sap         = '#fac863'

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let colors_name = "tone"
let colorgroup = {}

" Interface
" ----------------------------------------------------------------------
let colorgroup['Normal']       = {"GUIFG": _white,     "GUIBG":  _black}
" ------------------------
let colorgroup['Darker']       = {"GUIFG": _gray,      "GUIBG":  _black}
let colorgroup['ColorColumn']  = {"GUIFG": _black, "GUIBG":  _aubergine}
let colorgroup['Conceal']      = {"GUIFG": _sap,        "GUI": "bold"}
" let colorgroup['Cursor']       = {"GUIFG": _black, "GUIBG":  _turquoise}
let colorgroup['CursorLine']   = {"GUIFG": _white,     "GUIBG":  _semiblack}
let colorgroup['CursorLineNr'] = {"GUIFG": _gray_dark, "GUIBG":  _black}
let colorgroup['Directory']    = {"GUIFG": _turquoise,   "GUIBG":  _black}
let colorgroup['ErrorMsg']     = {"GUIFG": _black, "GUIBG":  _aubergine}
let colorgroup['FoldColumn']   = {                     "GUIBG":  _black}
let colorgroup['Folded']       = {"GUIFG": _white,     "GUIBG":  _semiblack}
let colorgroup['LineNr']       = {"GUIFG": _gray_dark, "GUIBG":  _black}
if &background == "light"
  let colorgroup['LineNr']       = {"GUIFG": _gray, "GUIBG":  _black}
endif
let colorgroup['MatchParen']   = {"GUIFG": _black, "GUIBG":  _aubergine}
let colorgroup['ModeMsg']      = {"GUIFG": _black, "GUIBG":  _turquoise}
let colorgroup['Pmenu']        = {"GUIFG": _white,     "GUIBG":  _semiblack}
let colorgroup['PmenuSel']     = {"GUIFG": _black, "GUIBG":  _turquoise}
let colorgroup['PmenuSbar']    = {                     "GUIBG":  _black}
let colorgroup['Search']       = {                     "GUIBG":  _gray_dark, "GUI": "underline"}
let colorgroup['SignColumn']   = {                     "GUIBG":  _black}
let colorgroup['StatusLine']   = {"GUIFG": _gray,      "GUIBG":  _semiblack}
let colorgroup['StatusLineNC'] = {"GUIFG": _gray_dark, "GUIBG":  _semiblack}
let colorgroup['Title']        = {"GUIFG": _turquoise, "GUI": "bold"}
let colorgroup['Todo']         = {"GUIFG": _black, "GUIBG":  _sky}
let colorgroup['VertSplit']    = {"GUIFG": _semiblack,      "GUIBG":  _semiblack}
let colorgroup['Visual']       = {"GUIFG": _black, "GUIBG":  _sap}
if &background == "light"
  let colorgroup['Visual']       = {"GUIFG": _white,     "GUIBG":  _sap}
endif
let colorgroup['WarningMsg']   = {"GUIFG": _black, "GUIBG":  _sky}


" Syntax
" ----------------------------------------------------------------------

" There are nine primary highlighting groups which Vim uses:

" Group Name  Description
" Comment     Comments within a program
" Constant    Program constants, such as numbers, quoted strings, or true/false
" Identifier  Variable identifier names
" Statement   A programming language statement, usually a keyword like "if" or "while"
" PreProc     A preprocessor, such as "#include" in C
" Type        A variable datatype, such as "int"
" Special     A special symbol, usually used for special characters like "\n" in strings
" Underlined  Text that should be underlined
" Error       Text which contains a programming language error
let colorgroup['Comment']      = {"GUIFG": _gray, "GUI": "italic"}
let colorgroup['Constant']     = {"GUIFG": _aubergine}
let colorgroup['Identifier']   = {"GUIFG": _turquoise}
let colorgroup['Statement']    = {"GUIFG": _orange}
let colorgroup['PreProc']      = {"GUIFG": _d_white}
let colorgroup['Type']         = {"GUIFG": _d_white}
let colorgroup['Special']      = {"GUIFG": _sap}
let colorgroup['Underlined']   = {"GUIFG": _turquoise, "GUI": "underline"}
let colorgroup['Error']        = {"GUIFG": _black, "GUIBG": _aubergine}

" Other highlighting groups
let colorgroup['Access']       = {"GUIFG": _turquoise, "GUI": "bold"}
let colorgroup['Define']       = {"GUIFG": _gray_light}
let colorgroup['Function']     = {"GUIFG": _sky}
let colorgroup['Label']        = {"GUIFG": _d_turquoise}
let colorgroup['Module']       = {"GUIFG": _aubergine, "GUI": "underline"}
let colorgroup['NonText']      = {"GUIFG": _gray_dark}
let colorgroup['SpecialKey']   = {"GUIFG": _gray_light}
let colorgroup['String']       = {"GUIFG": _turquoise}
let colorgroup['Structure']    = {"GUIFG": _gray}
let colorgroup['Tag']          = {"GUIFG": _l_sky}
" ------------------------
hi link Boolean               Number
hi link Character             Function
hi link Class                 Identifier
hi link ErrorMsg              Error
hi link Delimiter             Define
hi link Debug                 Special
hi link Conditional           Define
hi link Exception             PreProc
hi link Float                 Number
hi link Include               PreProc
hi link Macro                 PreProc
hi link Number                Function
hi link Operator              PreProc
hi link PreCondit             PreProc
hi link Repeat                Statement
hi link SpecialChar           Special
hi link SpecialComment        Special
hi link StorageClass          Constant
hi link Symbol                PreProc
hi link Typedef               Type


" Plugins
" ----------------------------------------------------------------------

" CtrlP
hi link CtrlPMatch            Function

" Git commit
hi link gitcommitBranch        Constant
hi link gitcommitSelectedFile  Statement
hi link gitcommitDiscardedFile Structure
hi link gitcommitUntrackedFile Structure
hi link gitcommitSummary       String

" GitGutter
hi link GitGutterAdd          Darker
hi link GitGutterChange       Darker
hi link GitGutterDelete       Darker
hi link GitGutterChangeDelete Darker

" NERDtree
hi link NerdTreeCWD           Statement
hi link NerdTreeHelpKey       Function
hi link NerdTreeHelpTitle     Statement
hi link NerdTreeOpenable      Statement
hi link NerdTreeClosable      Statement
hi link NerdTreeDir           Normal
hi link NerdTreeDirSlash      Statement

" PlainTasks (.todo)
hi link ptCompleteTask        Number
hi link ptContext             Type
hi link ptSection             Title
hi link ptTask                Normal

" Startify
hi link StartifyNumber        Function
hi link StartifyBracket       StartifyNumber
hi link StartifySection       Title
hi link StartifyPath          Define
hi link StartifySlash         StartifyPath
hi link StartifyFile          Normal


" Languages/Tools
" ----------------------------------------------------------------------

" highlight clear ALEErrorSign
hi link ALEErrorSign          Type
hi link ALEWarningSign        Special

" Apache
hi link apacheDeclaration     PreProc

" CoffeeScript
hi link coffeeExtendedOp      Function
hi link coffeeObject          Statement
hi link coffeeObjAssign       Function
hi link coffeeParen           Function

" CSS
hi link cssAttr               String
hi link cssColor              Normal
hi link cssClassName          Function
hi link cssIdentifier         Function
hi link cssProp               Define
hi link cssSelectorOp         Identifier

" HAML
hi link hamlTag               Function

" HTML
hi link htmlArg               Statement
hi link htmlTag               Delimiter
hi link htmlEndTag            Delimiter
hi link htmlTagName           Tag
" hi link htmlEndTag            Function

" JavaScript
hi link javascriptFuncArg     Function
hi link javascriptFuncComma   Function
hi link javascriptFuncDef     Statement
hi link javascriptFuncKeyword Statement
hi link javascriptOpSymbols   Type
hi link javascriptParens      Function
hi link javascriptEndcolons   Function

" Javascript (pangloss/vim-javascript)
hi link jsArrowFuncArgs       Identifier
hi link jsArrowFunction       Normal
hi link jsBrackets            Delimiter
" hi link jsBraces              Delimiter
hi link jsClassDefinition     Class
hi link jsClassFuncName       Function
hi link jsClassKeyword        Label
hi link jsDecorator           Normal
hi link jsExport              Statement
" hi link jsImport              Include
hi link jsFrom                jsImport
" hi link jsFuncBraces          Delimiter
hi link jsFuncCall            Function
hi link jsFuncParens          Delimiter
hi link jsGlobalObjects       Identifier
hi link jsModuleKeyword       Tag
hi link jsNoise               Delimiter
hi link jsObjectBraces        Delimiter
hi link jsParens              Delimiter
hi link jsThis                Identifier

" JSON
hi link jsonKeyword           Function

" LaTeX
hi link texInputFile          PreProc
hi link texDocType            Constant
hi link texDocTypeArgs        Function
hi link texInputFile          Symbol
hi link texInputFileOpt       String
hi link texMathMatcher        Statement
hi link texMathSymbol         Symbol
hi link texMathZoneX          Symbol
hi link texSection            Title
hi link texStatement          Function
hi link texTypeSize           Symbol
hi link texTypeStyle          Symbol
" hi link texSpecialChar        Special

" Markdown
hi link mkdBlockquote         Symbol
hi link mkdCode               Identifier
hi link mkdIndentCode         Identifier
" hi link mkdLink               Normal

" MatchTagAlways
hi link MatchTag              Identifier

" PHP
hi link phpParent             Normal
hi link phpRegion             Comment
hi link phpVarSelector        Identifier

" Ruby
hi link rubyAccess            Access
hi link rubyCallback          Normal
hi link rubyClass             Label
hi link rubyClassName         Class
hi link rubyControl           Statement
hi link rubyConstant          Constant
hi link rubyEntity            Function
hi link rubyInclude           Include
hi link rubyInterpolation     Include
hi link rubyMacro             Function
hi link rubyModule            Module
" hi link RubyPseudoVariable    Type
hi link rubyStringDelimiter   rubyString
hi link rubySymbol            Symbol

" SASS
hi link sassClassChar         Function
hi link sassClass             Function
hi link sassIdChar            Function
hi link sassId                Function
hi link sassProperty          CSSProp

" Slim
hi link slimBegin             Normal
hi link slimClass             Function
hi link slimClassChar         Function
hi link slimId                Function
hi link slimIdChar            Function
hi link rubyKeyword           PreProc
hi link slimText              Normal

" VimL
hi link vimCmdSep             Function

" YAML
hi link yamlBlockMappingKey   Function
hi link yamlDocumentStart     Comment

" XML
" hi link xmlAttrib             Normal
hi link xmlTag                Delimiter
hi link xmlTagName            Tag
hi link xmlEndTag             Tag


" Expand colorgroups
" ----------------------------------------------------------------------

let s:colors = {}
" http://choorucode.com/2011/07/29/vim-chart-of-color-names/
let valid_cterm_colors =
      \ [
      \     'Black', 'DarkBlue', 'DarkGreen', 'DarkCyan',
      \     'DarkRed', 'DarkMagenta', 'Brown', 'DarkYellow',
      \     'LightGray', 'LightGrey', 'Gray', 'Grey',
      \     'DarkGray', 'DarkGrey', 'Blue', 'LightBlue',
      \     'Green', 'LightGreen', 'Cyan', 'LightCyan',
      \     'Red', 'LightRed', 'Magenta', 'LightMagenta',
      \     'Yellow', 'LightYellow', 'White',
      \ ]
for key in keys(colorgroup)
  let s:colors = colorgroup[key]
  if has_key(s:colors, 'TERM')
    let term = s:colors['TERM']
  else
    let term = 'NONE'
  endif
  if has_key(s:colors, 'GUI')
    let gui = s:colors['GUI']
  else
    let gui='NONE'
  endif
  if has_key(s:colors, 'GUIFG')
    let guifg = s:colors['GUIFG']
  else
    let guifg='NONE'
  endif
  if has_key(s:colors, 'GUIBG')
    let guibg = s:colors['GUIBG']
  else
    let guibg='NONE'
  endif
  if has_key(s:colors, 'CTERM')
    let cterm = s:colors['CTERM']
  else
    let cterm=gui
  endif
  if has_key(s:colors, 'CTERMFG')
    let ctermfg = s:colors['CTERMFG']
  else
    if index(valid_cterm_colors, guifg) != -1
      let ctermfg=guifg
    else
      let ctermfg='Blue'
    endif
  endif
  if has_key(s:colors, 'CTERMBG')
    let ctermbg = s:colors['CTERMBG']
  else
    if index(valid_cterm_colors, guibg) != -1
      let ctermbg=guibg
    else
      let ctermbg='NONE'
    endif
  endif
  if has_key(s:colors, 'GUISP')
    let guisp = s:colors['GUISP']
  else
    let guisp='NONE'
  endif

  if key =~ '^\k*$'
    execute "hi ".key." term=".term." cterm=".cterm." gui=".gui." ctermfg=".ctermfg." guifg=".guifg." ctermbg=".ctermbg." guibg=".guibg." guisp=".guisp
  endif
endfor
