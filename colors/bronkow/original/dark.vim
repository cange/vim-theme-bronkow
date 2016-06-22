" Check key colors with
" :so $VIMRUNTIME/syntax/hitest.vim
let g:Powerline_colorscheme = 'bronkowDark'

" " ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:colors.white.default.hex . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:colors.green.default.hex . "\x7"
  silent                    !echo -ne "\033]12;".g:colors.grey.light.hex    . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:colors.grey.light.hex    . "\007"
endif

exe "hi! Comment       " . g:bgNone        . g:fgGreyDr     . g:none
exe "hi! Constant      " . g:bgNone        . g:fgShadeLst   . g:none
exe "hi! Conditional   " . g:bgNone        . g:fgOrangeL    . g:none
exe "hi! Identifier    " . g:bgNone        . g:fgBlueLr     . g:none
exe "hi! Normal        " . g:bgShadeD      . g:fgShadeLr    . g:none
exe "hi! Number        " . g:bgNone        . g:fgRed        . g:none
exe "hi! PreProc       " . g:bgNone        . g:fgGreyL      . g:none
exe "hi! Special       " . g:bgNone        . g:fgShadeLr    . g:none
exe "hi! Statement     " . g:bgNone        . g:fgGreenL     . g:none
exe "hi! Operator      " . g:bgNone        . g:fgGreyL      . g:none
exe "hi! String        " . g:bgNone        . g:fgShadeLst   . g:none
exe "hi! Type          " . g:bgNone        . g:fgBlueLr     . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit     . g:fgInherit    . g:underline
exe "hi! Error         " . g:bgRedD        . g:fgOrangeL    . g:none
exe "hi! Todo          " . g:bgNone        . g:fgOrangeL    . g:none
exe "hi! MatchParen    " . g:bgBlue        . g:fgShadeLst   . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! SpecialKey    " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! Title         " . g:bgNone        . g:fgOrangeD    . g:none
" == Text Selection ==
exe "hi! CursorIM      " . g:bgWhite       . g:fgInvert     . g:none
exe "hi! CursorColumn  " . g:bgRed         . g:fgNone       . g:none
exe "hi! CursorLine    " . g:bgShade       . g:fgNone       . g:bold
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
exe "hi! LineNr        " . g:bgShadeD      . g:fgShadeL     . g:none
exe "hi! CursorLineNr  " . g:bgShade       . g:fgShadeLr    . g:bold
exe "hi! ColorColumn   " . g:bgShade       . g:fgNone       . g:none
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
exe "hi! GitGutterAdd          " . g:bgNone      . g:fgGreenL    . g:none
exe "hi! GitGutterChange       " . g:bgNone      . g:fgOrangeL   . g:none
exe "hi! GitGutterDelete       " . g:bgNone      . g:fgRed       . g:none
exe "hi! GitGutterChangeDelete " . g:bgNone      . g:fgRed       . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone        . g:fgShadeLr    . g:none
exe "hi! SignColumn    " . g:bgShadeD      . g:fgShadeLr    . g:none
exe "hi! MoreMsg       " . g:bgNone        . g:fgBlueL      . g:none
exe "hi! ModeMsg       " . g:bgNone        . g:fgInherit    . g:none
exe "hi! ErrorMsg      " . g:bgRedD        . g:fgOrangeL    . g:none
exe "hi! WarningMsg    " . g:bgInherit     . g:fgOrangeL    . g:none
exe "hi! Question      " . g:bgNone        . g:fgGreen      . g:none
exe "hi! Ignore        "                   . g:fgInvert     . g:none
" == JavaScript ==
exe "hi! jsBooleanFalse    " . g:fgRed
exe "hi! jsBooleanTrue     " . g:fgRed
exe "hi! jsClassDefinition " . g:fgShadeLst
exe "hi! jsClassKeywords   " . g:fgGreenL
exe "hi! jsImportContainer " . g:fgShadeLst
exe "hi! jsFuncName        " . g:fgShadeLst
exe "hi! jsFuncArgs        " . g:fgShadeLst
exe "hi! jsConditional     " . g:fgGreenL
exe "hi! jsReturn          " . g:fgGreenL
exe "hi! jsFunction        " . g:fgGreenL
exe "hi! jsModuleWords     " . g:fgGreenL
exe "hi! jsModules         " . g:fgGreenL
exe "hi! jsNull            " . g:fgRed
exe "hi! jsThis            " . g:fgGreenL
exe "hi! jsUndefined       " . g:fgRed
exe "hi! jsFuncCall        " . g:fgBlueLr

" == JSON ==
exe "hi! jsonKeyword   "  . g:fgBlue
exe "hi! jsonNumber    "  . g:fgGreen
" == HTML ==
exe "hi! htmlArg "        . g:fgBlueLr
exe "hi! htmlTag "        . g:fgShadeLr
exe "hi! htmlTagName "    . g:fgGreenL
" exe "hi! htmlEndTag "     . g:fgRed
" exe "hi! htmlH1 "         . g:fgRed
" exe "hi! htmlTagN "       . g:fgPurple
" -- markup engine: slim --
exe "hi! slimTag "              . g:fgPurple
" -- markup engine: haml --
exe "hi! hamlFilter "           . g:fgPurple
" == CSS ==
exe "hi! cssAttr "              . g:fgRed
exe "hi! cssAttributeSelector " . g:fgGreen
" == NERDTree ==
exe "hi! NERDTreeBookmark "        . g:fgShade
exe "hi! NERDTreeBookmarkName "    . g:fgBlueL
exe "hi! NERDTreeBookmarksHeader " . g:fgOrangeD
exe "hi! NERDTreeCWD "             . g:fgGreen
exe "hi! NERDTreeDir "             . g:fgShadeLst
exe "hi! NERDTreeDirSlash "        . g:fgShadeLr
exe "hi! NERDTreeFile  "           . g:fgShadeLr
exe "hi! NERDTreeExecFile "        . g:fgOrangeD
exe "hi! NERDTreeHelp "            . g:fgShadeL
exe "hi! NERDTreeClosable "        . g:fgShadeL
exe "hi! NERDTreeOpenable "        . g:fgShadeLr
" == TMRU ==
exe "hi! InputlListCursor "        . g:bgBlueD . g:bold
exe "hi! InputlListSelected "      . g:bgGreen
