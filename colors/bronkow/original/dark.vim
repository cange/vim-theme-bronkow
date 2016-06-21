" Check key colors with
" :source $VIMRUNTIME/syntax/hitest.vim
let g:Powerline_colorscheme = 'bronkowDark'

" " ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:colors.white.default.hex . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:colors.green.default.hex . "\x7"
  silent                    !echo -ne "\033]12;".g:colors.grey.light.hex    . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:colors.grey.light.hex    . "\007"
endif

exe "hi! Comment       " . g:bgNone        . g:fgGrey       . g:none
exe "hi! Constant      " . g:bgNone        . g:fgShadeLr    . g:none
exe "hi! Conditional   " . g:bgNone        . g:fgOrangeL    . g:none
exe "hi! Identifier    " . g:bgNone        . g:fgBlueL      . g:none
exe "hi! Normal        " . g:bgShadeDst    . g:fgShadeLst   . g:none
exe "hi! Number        " . g:bgNone        . g:fgGreen      . g:none
exe "hi! PreProc       " . g:bgNone        . g:fgOrangeD    . g:none
exe "hi! Special       " . g:bgNone        . g:fgShadeLr    . g:none
exe "hi! Statement     " . g:bgNone        . g:fgPurple     . g:none
exe "hi! String        " . g:bgNone        . g:fgOrange     . g:none
exe "hi! Type          " . g:bgNone        . g:fgBlueL      . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit     . g:fgInherit    . g:underline
exe "hi! Error         " . g:bgRedDr       . g:fgOrangeL    . g:none
exe "hi! Todo          " . g:bgNone        . g:fgOrangeL    . g:none
exe "hi! MatchParen    " . g:bgBlue        . g:fgShadeLst   . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! SpecialKey    " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! Title         " . g:bgNone        . g:fgOrangeD    . g:none
" == Text Selection ==
exe "hi! CursorIM      " . g:bgWhite       . g:fgInvert     . g:none
exe "hi! CursorColumn  " . g:bgRed         . g:fgNone       . g:none
exe "hi! CursorLine    " . g:bgBlueD       . g:fgNone       . g:bold
" == Cursors ==
exe "hi! Cursor        " . g:bgShadeLst                     . g:none
exe "hi! iCursor       " . g:bgWhite                        . g:none
exe "hi! vCursor       " . g:bgOrange      . g:fgWhite      . g:bold
exe "hi! rCursor       " . g:bgWhite                        . g:none
" == Selections ==
exe "hi! Visual        " . g:bgShadeL      . g:fgInvert     . g:bold
exe "hi! VisualNOS     " . g:bgShadeL      . g:fgInvert     . g:bold
exe "hi! Search        " . g:bgBlueL       . g:fgInvert     . g:none
exe "hi! IncSearch     " . g:bgBlack       . g:fgWhite      . g:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgShadeDr     . g:fgShadeL
exe "hi! PmenuSel      " . g:bgShadeDst    . g:fgShadeLst
exe "hi! PMenuSbar     " . g:bgBlue
exe "hi! PMenuThumb    " . g:bgBlueD
" -- vertical separator line --
exe "hi! Folded        " . g:bgShadeDr     . g:fgBlue       . g:none
exe "hi! FoldColumn    " . g:bgShadeDr     . g:fgOrange     . g:none
exe "hi! VertSplit     " . g:bgShade       . g:fgShade      . g:none
exe "hi! LineNr        " . g:bgShadeDr     . g:fgShadeL     . g:none
exe "hi! CursorLineNr  " . g:bgShadeDr     . g:fgShadeLr    . g:bold
exe "hi! ColorColumn   " . g:bgShadeDr     . g:fgNone       . g:none
" -- Status bars --
exe "hi! StatusLine    " . g:bgShadeD      . g:fgShadeLr    . g:none
exe "hi! StatusLineNC  " . g:bgShade       . g:fgNone       . g:none
exe "hi! WildMenu      " . g:bgBlueD       . g:fgShadeLst   . g:none
exe "hi! TabLine       " . g:bgShadeLst    . g:fgShadeDr    . g:none
exe "hi! TabLineFill   " . g:bgShadeLst    . g:fgGrey       . g:none
exe "hi! TabLineSel    " . g:bgBlueL       . g:fgShadeLst   . g:none
" == Spelling ==
exe "hi! SpellBad      " . g:bgNone        . g:fgNone       . g:undercurl . g:spRed
exe "hi! SpellCap      " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
exe "hi! SpellRare     " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeL
exe "hi! SpellLocal    " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
" == Diff ==
exe "hi! DiffAdd       " . g:bgNone . g:fgGreen  . g:none
exe "hi! DiffChange    " . g:bgNone . g:fgBlueL  . g:none
exe "hi! DiffDelete    " . g:bgNone . g:fgRed    . g:none
exe "hi! DiffText      " . g:bgNone . g:fgOrange . g:none
" == Git ==
exe "hi! GitGutterAdd          " . g:bgShadeDr  . g:fgGreen    . g:none
exe "hi! GitGutterChange       " . g:bgShadeDr  . g:fgOrangeD  . g:none
exe "hi! GitGutterDelete       " . g:bgShadeDr  . g:fgRedD     . g:none
exe "hi! GitGutterChangeDelete " . g:bgShadeDr  . g:fgRed      . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone        . g:fgGreen      . g:none
exe "hi! SignColumn    " . g:bgShadeD      . g:fgShadeLr    . g:none
exe "hi! MoreMsg       " . g:bgNone        . g:fgBlueL      . g:none
exe "hi! ModeMsg       " . g:bgNone        . g:fgInherit    . g:none
exe "hi! ErrorMsg      " . g:bgRedDr       . g:fgOrangeL    . g:none
exe "hi! WarningMsg    " . g:bgInherit     . g:fgOrangeL    . g:none
exe "hi! Question      " . g:bgNone        . g:fgGreen      . g:none
exe "hi! Ignore        "                   . g:fgInvert     . g:none
" == JavaScript ==
exe "hi! jsFuncCall     " . g:fgBlueL
exe "hi! jsObjectKey    " . g:fgBlueL
exe "hi! jsPrototype    " . g:fgBlueL
exe "hi! jsNull         " . g:fgRed
exe "hi! jsBooleanTrue  " . g:fgRed
exe "hi! jsBooleanFalse " . g:fgRed
exe "hi! jsFunction     " . g:fgOrangeL
exe "hi! jsReturn       " . g:fgOrangeL
exe "hi! jsOperator     " . g:fgOrangeL
exe "hi! jsThis         " . g:fgOrangeL
" == JSON ==
exe "hi! jsonKeyword   " . g:fgBlue
exe "hi! jsonNumber    " . g:fgGreen
" == HTML ==
exe "hi! htmlArg "      . g:fgBlueL
exe "hi! htmlEndTag "   . g:fgShadeLr
exe "hi! htmlH1 "       . g:fgShadeLr
exe "hi! htmlString "   . g:fgOrange
exe "hi! htmlTag "      . g:fgShadeLst
exe "hi! htmlTagN "     . g:fgPurple
exe "hi! htmlTagName "  . g:fgPurple
" -- markup engine: slim --
exe "hi! slimTag " . g:fgPurple
" -- markup engine: haml --
exe "hi! hamlFilter " . g:fgPurpleD
" == CSS ==
exe "hi! cssAttr "              . g:fgRedL
exe "hi! cssBraces "            . g:fgShadeLst
exe "hi! cssProp "              . g:fgBlueL
exe "hi! cssPseudoClass "       . g:fgShadeLst
exe "hi! cssPseudoClassId "     . g:fgShadeLst
exe "hi! cssPseudoClassFn "     . g:fgPurple
exe "hi! cssTagName "           . g:fgPurple
exe "hi! cssMediaKeyword "      . g:fgOrangeL
exe "hi! cssMediaType "         . g:fgBlueL
exe "hi! cssMediaProp "         . g:fgBlueL
exe "hi! cssAttributeSelector " . g:fgPurple
exe "hi! cssColor "             . g:fgRed
" == NERDTree ==
exe "hi! NERDTreeBookmark "        . g:fgShade
exe "hi! NERDTreeBookmarkName "    . g:fgBlueL
exe "hi! NERDTreeBookmarksHeader " . g:fgOrangeD
exe "hi! NERDTreeCWD "             . g:fgGreen
exe "hi! NERDTreeClosable "        . g:fgShade
exe "hi! NERDTreeDir "             . g:fgShadeLr
exe "hi! NERDTreeDirSlash "        . g:fgShadeLr
exe "hi! NERDTreeExecFile "        . g:fgOrangeD
exe "hi! NERDTreeFile  "           . g:fgShadeL
exe "hi! NERDTreeHelp "            . g:fgShadeL
exe "hi! NERDTreeOpenable "        . g:fgShade
" == TMRU ==
exe "hi! InputlListCursor "        . g:bgBlueD . g:bold
exe "hi! InputlListSelected "      . g:bgGreen
