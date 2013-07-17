let g:Powerline_colorscheme = 'cubuntuDark'
" on the fly theme reload
if exists('g:Powerline_loaded')
  call Pl#ReloadColorscheme()
endif

" " ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:white       . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:modeNormal  . "\x7"
  silent                    !echo -ne "\033]12;".g:greyL       . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:greyL       . "\007"
endif

exe "hi! Normal        " . g:bgGreyDst     . g:fgGreyLst     . g:none
exe "hi! Comment       " . g:bgNone        . g:fgGreyL       . g:none
exe "hi! Constant      " . g:bgNone        . g:fgPurpleLr    . g:none
" NERDTree bookmark
exe "hi! Identifier    " . g:bgNone        . g:fgBlue        . g:none
exe "hi! Statement     " . g:bgNone        . g:fgCyan        . g:bold
exe "hi! PreProc       " . g:bgNone        . g:fgYellow      . g:none
exe "hi! Type          " . g:bgNone        . g:fgGreen       . g:none
exe "hi! Special       " . g:bgNone        . g:fgBlueL       . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit     . g:fgInherit     . g:underline
exe "hi! Error         " . g:bgRedD        . g:fgGreyLr      . g:none
exe "hi! Todo          " . g:bgYellowD     . g:fgGreyD       . g:none
exe "hi! MatchParen    " . g:bgCyanDr      . g:fgGreyLr      . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone        . g:fgGreyD       . g:none
exe "hi! SpecialKey    " . g:bgNone        . g:fgGreyD       . g:none
exe "hi! Title         " . g:bgNone        . g:fgRedD        . g:none
" == Text Selection ==
exe "hi! CursorIM      " . g:bgGreen       . g:fgInvert      . g:none
exe "hi! CursorColumn  " . g:bgRed         . g:fgNone        . g:none
exe "hi! CursorLine    " . g:bgBlack       . g:fgNone        . g:none
" == Cursors ==
exe "hi! Cursor        " . g:bgGreenD      . g:fgWhite
exe "hi! iCursor       " . g:bgBlue        . g:fgWhite
exe "hi! vCursor       " . g:bgOrange      . g:fgWhite       . g:none
exe "hi! rCursor       " . g:bgGreyLr      . g:fgBlueDr
" == Selections ==
exe "hi! Visual        " . g:bgGreyD       . g:fgOrangeD     . g:none
exe "hi! VisualNOS     " . g:bgGreyD       . g:fgOrange      . g:none
exe "hi! IncSearch     " . g:bgGreenD      . g:fgWhite       . g:none
exe "hi! Search        " . g:bgGreenDr     . g:fgGreyLst
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgGreyD       . g:fgGreyLr
exe "hi! PmenuSel      " . g:bgBlueDr      . g:fgGreyLst
exe "hi! PMenuSbar     " . g:bgGrey
exe "hi! PMenuThumb    " . g:bgBlueD
" -- vertical separator line --
exe "hi! Folded        " . g:bgGreyD       . g:fgGreyL       . g:none
exe "hi! FoldColumn    " . g:bgGreyD       . g:fgGreyL       . g:none
exe "hi! VertSplit     " . g:bgGrey        . g:fgGrey        . g:none
exe "hi! LineNr        " . g:bgGreyD       . g:fgGreyL       . g:none
exe "hi! CursorLineNr  " . g:bgGrey        . g:fgGreyLr      . g:bold
exe "hi! ColorColumn   " . g:bgGreyDst     . g:fgNone        . g:none
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
exe "hi! DiffAdd       " . g:bgGreen       . g:fgGreyDr      . g:none
exe "hi! DiffChange    " . g:bgBlueL       . g:fgBlueDr      . g:none
exe "hi! DiffDelete    " . g:bgRedLr       . g:fgRedDr       . g:none
exe "hi! DiffText      " . g:bgOrangeLr    . g:fgOrangeDr    . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone        . g:fgBlueD       . g:bold
exe "hi! SignColumn    " . g:bgGreyD       . g:fgGreyLr      . g:none
exe "hi! MoreMsg       " . g:bgNone        . g:fgBlueL       . g:none
exe "hi! ModeMsg       " . g:bgNone        . g:fgInherit     . g:none
exe "hi! ErrorMsg      " . g:bgInherit     . g:fgRed         . g:none
exe "hi! WarningMsg    " . g:bgInherit     . g:fgOrangeL     . g:none
exe "hi! Question      " . g:bgNone        . g:fgGreenD      . g:none
exe "hi! WildMenu      " . g:bgNone        . g:fgBlue        . g:none
exe "hi! Ignore        "                   . g:fgInvert
" == custom types by cange ==
exe "hi! String        " . g:bgNone        . g:fgRedD        . g:none
exe "hi! BString       " . g:bgNone        . g:fgRedD        . g:bold
exe "hi! Function      " . g:bgNone        . g:fgCyanL       . g:bold
