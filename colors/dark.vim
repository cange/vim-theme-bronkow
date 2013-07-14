" ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:white       . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:modeNormal  . "\x7"
  silent                    !echo -ne "\033]12;".g:greyL       . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:greyL       . "\007"
endif

exe "hi! Normal        " . g:bgGreyDst     . g:fgGreyL       . g:none
exe "hi! Comment       " . g:bgNone        . g:fgGrey        . g:none
exe "hi! Constant      " . g:bgNone        . g:fgPurple      . g:none
" NERDTree bookmark
exe "hi! Identifier    " . g:bgNone        . g:fgBlueD       . g:none
exe "hi! Statement     " . g:bgNone        . g:fgCyanD       . g:bold
exe "hi! PreProc       " . g:bgNone        . g:fgYellowD     . g:none
exe "hi! Type          " . g:bgNone        . g:fgGreenDr      . g:none
exe "hi! Special       " . g:bgNone        . g:fgBlue        . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit     . g:fgInherit     . g:underline
exe "hi! Error         " . g:bgRedD        . g:fgGreyLr      . g:none
exe "hi! Todo          " . g:bgYellowD     . g:fgGreyD       . g:none
exe "hi! MatchParen    " . g:bgPurpleDr    . g:fgPurpleLr    . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone        . g:fgGreyD       . g:none
exe "hi! SpecialKey    " . g:bgNone        . g:fgGreyD       . g:none
exe "hi! Title         " . g:bgNone        . g:fgRedD        . g:none
" == Text Selection ==
exe "hi! CursorIM      " . g:bgGreen       . g:fgInvert      . g:none
exe "hi! CursorColumn  " . g:bgRed         . g:fgNone        . g:none
exe "hi! CursorLine    " . g:bgBlack       . g:fgNone        . g:none
" == Cursors ==
exe "hi! Cursor        " . g:bgGreenDr     . g:fgGreyLr
exe "hi! iCursor       " . g:bgGreyLr      . g:none
exe "hi! vCursor       " . g:bgOrangeLr    . g:fgWhite       . g:none
exe "hi! rCursor       " . g:bgModeInsert  . g:none
" == Selections ==
exe "hi! Visual        " . g:bgOrangeD     . g:fgGreyLr      . g:none
exe "hi! VisualNOS     " . g:bgNone        . g:fgOrangeLr    . g:underline
exe "hi! IncSearch     " . g:bgGreenD      . g:fgGreyDr      . g:none
exe "hi! Search        " . g:bgGreenDr     . g:fgGreen       . g:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgGreyD       . g:fgGreyL       . g:none
exe "hi! PmenuSel      " . g:bgGreyDr      . g:fgRed         . g:none
exe "hi! PMenuSbar     " . g:bgGreyDr      . g:none
exe "hi! PMenuThumb    " . g:bgRedD        . g:none
" -- vertical separator line --
exe "hi! Folded        " . g:bgGreyD       . g:fgGreyL       . g:none
exe "hi! FoldColumn    " . g:bgGreyD       . g:fgGreyL       . g:none
exe "hi! VertSplit     " . g:bgGrey        . g:fgGrey        . g:none
exe "hi! LineNr        " . g:bgGreyD       . g:fgGreyL       . g:none
exe "hi! CursorLineNr  " . g:bgGrey        . g:fgGreyLr      . g:bold
exe "hi! ColorColumn   " . g:bgBlack       . g:fgNone        . g:none
" -- Status bars --
exe "hi! StatusLine    " . g:bgGrey        . g:fgInherit     . g:none
exe "hi! StatusLineNC  " . g:bgGrey        . g:fgNone        . g:none
exe "hi! TabLine       " . g:bgGreyLst     . g:fgGreyDr      . g:none
exe "hi! TabLineFill   " . g:bgGreyLst     . g:fgGrey        . g:none
exe "hi! TabLineSel    " . g:bgBlueLr      . g:fgGreyLst     . g:none
" == Spelling ==
exe "hi! SpellBad      " . g:bgNone        . g:fgNone        . g:undercurl . g:spRed
exe "hi! SpellCap      " . g:bgNone        . g:fgNone        . g:undercurl . g:spYellowD
exe "hi! SpellRare     " . g:bgNone        . g:fgNone        . g:undercurl . g:spYellowLr
exe "hi! SpellLocal    " . g:bgNone        . g:fgNone        . g:undercurl . g:spYellowDr
" == Diff ==
exe "hi! DiffAdd       " . g:bgGreenDr     . g:fgGreyLr      . g:none
exe "hi! DiffChange    " . g:bgBlueDr      . g:fgGreyLr      . g:none
exe "hi! DiffDelete    " . g:bgRedDr       . g:fgGreyLr      . g:none
exe "hi! DiffText      " . g:bgOrangeDr    . g:fgGreyLr      . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone        . g:fgBlueD       . g:none
exe "hi! SignColumn    " . g:bgGreyD       . g:fgGreyLr      . g:none
exe "hi! MoreMsg       " . g:bgNone        . g:fgBlueL       . g:none
exe "hi! ModeMsg       " . g:bgNone        . g:fgInherit     . g:none
exe "hi! ErrorMsg      " . g:bgInherit     . g:fgRed         . g:none
exe "hi! WarningMsg    " . g:bgInherit     . g:fgOrangeL     . g:none
exe "hi! Question      " . g:bgNone        . g:fgGreenD      . g:none
exe "hi! WildMenu      " . g:bgNone        . g:fgBlueDr      . g:none
exe "hi! Ignore        "                   . g:fgInvert
" == custom types by cange ==
exe "hi! String        " . g:bgNone        . g:fgRedD        . g:none
exe "hi! BString       " . g:bgNone        . g:fgRedD        . g:bold
exe "hi! Function      " . g:bgNone        . g:fgCyanDr       . g:bold
