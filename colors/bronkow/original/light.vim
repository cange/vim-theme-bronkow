let g:Powerline_colorscheme = 'bronkowLight'
" on the fly theme reload
if exists('g:Powerline_loaded')
  call Pl#ReloadColorscheme()
endif

" ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:colors.grey.dark.hex     . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:colors.green.dark.hex    . "\x7"
  silent                    !echo -ne "\033]12;".g:colors.grey.darkest.hex  . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:colors.grey.darkest.hex  . "\007"
endif

exe "hi! Normal        " . g:bgGreyLst     . g:fgPurpleD    . g:none
exe "hi! Comment       " . g:bgNone        . g:fgGrey       . g:none
exe "hi! Constant      " . g:bgNone        . g:fgGreenDr    . g:bold
" NERDTree bookmark
exe "hi! Identifier    " . g:bgNone        . g:fgBlueDr     . g:none
exe "hi! Statement     " . g:bgNone        . g:fgBlue       . g:bold
exe "hi! PreProc       " . g:bgNone        . g:fgPurpleDr   . g:none
exe "hi! Type          " . g:bgNone        . g:fgGreenDr    . g:none
exe "hi! Special       " . g:bgNone        . g:fgBlueD      . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit     . g:fgInherit    . g:underline
exe "hi! Error         " . g:bgInvert      . g:fgRedD       . g:bold
exe "hi! Todo          " . g:bgInherit     . g:fgRedDr      . g:bold
exe "hi! MatchParen    " . g:bgBlueLr      . g:fgBlueDr     . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone        . g:fgGreyLr     . g:none
exe "hi! SpecialKey    " . g:bgNone        . g:fgGreyLr     . g:none
exe "hi! Title         " . g:bgNone        . g:fgBlueD      . g:bold
" == Text Selection ==
exe "hi! CursorIM      " . g:bgGreen       . g:fgGreenDr    . g:none
exe "hi! CursorColumn  " . g:bgYellowLr    . g:fgNone       . g:none
exe "hi! CursorLine    " . g:bgNone        . g:fgNone       . g:bold
" == Cursors ==
exe "hi! Cursor        " . g:bgGreenD      . g:fgWhite      . g:none
exe "hi! iCursor       " . g:bgBlueD                        . g:none
exe "hi! rCursor       " . g:bgBlueL                        . g:none
exe "hi! vCursor       " . g:bgOrangeD     . g:fgOrangeLr   . g:none
" == Selections ==
exe "hi! Visual        " . g:bgGreyLr      . g:fgPurpleD    . g:none
exe "hi! VisualNOS     " . g:bgGreyLr      . g:fgGrey       . g:none
exe "hi! IncSearch     " . g:bgPurpleD     . g:fgWhite      . g:none
exe "hi! Search        " . g:bgPurple      . g:fgGreyLst    . g:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgGreyLr      . g:fgGreyDst    . g:none
exe "hi! PmenuSel      " . g:bgBlue        . g:fgGreyLst    . g:none
exe "hi! PMenuSbar     " . g:bgGrey                         . g:none
exe "hi! PMenuThumb    " . g:bgBlueD                        . g:none
" -- vertical separator line --
exe "hi! Folded        " . g:bgGreyLr      . g:fgGreyD      . g:none
exe "hi! FoldColumn    " . g:bgGreyL       . g:fgGreyD      . g:none
exe "hi! VertSplit     " . g:bgGreyL       . g:fgGreyL      . g:none
exe "hi! LineNr        " . g:bgGreyLr      . g:fgGrey       . g:none
exe "hi! CursorLineNr  " . g:bgGreyL       . g:fgGreyLst    . g:bold
exe "hi! ColorColumn   " . g:bgGreyLr      . g:fgNone       . g:none
" -- Status bars --
exe "hi! StatusLine    " . g:bgGreyLr      . g:fgGrey       . g:none
exe "hi! StatusLineNC  " . g:bgGreyLr      . g:fgNone       . g:none
exe "hi! WildMenu      " . g:bgBlue        . g:fgWhite      . g:none
exe "hi! TabLine       " . g:bgGreyDst     . g:fgGreyLst    . g:none
exe "hi! TabLineFill   " . g:bgGreyDst     . g:fgGrey       . g:none
exe "hi! TabLineSel    " . g:bgBlueDr      . g:fgGreyLst    . g:none
" == Spelling ==
exe "hi! SpellBad      " . g:bgNone        . g:fgNone       . g:undercurl . g:spRed
exe "hi! SpellCap      " . g:bgNone        . g:fgNone       . g:undercurl . g:spYellowD
exe "hi! SpellRare     " . g:bgNone        . g:fgNone       . g:undercurl . g:spYellowLr
exe "hi! SpellLocal    " . g:bgNone        . g:fgNone       . g:undercurl . g:spYellowDr
" == Diff ==
exe "hi! DiffAdd       " . g:bgGreenL      . g:fgGreenDr    . g:none
exe "hi! DiffChange    " . g:bgBlueLr      . g:fgBlueDr     . g:none
exe "hi! DiffDelete    " . g:bgRedLr       . g:fgRedDr      . g:none
exe "hi! DiffText      " . g:bgOrangeLr    . g:fgOrangeDr   . g:none
" == Git ==
exe "hi! GitGutterAdd          " . g:bgGreenLr  . g:fgGreenD   . g:none
exe "hi! GitGutterChange       " . g:bgYellowLr . g:fgYellowDr . g:none
exe "hi! GitGutterDelete       " . g:bgRedLr    . g:fgRedDr    . g:none
exe "hi! GitGutterChangeDelete " . g:bgOrange   . g:fgRedDr    . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone        . g:fgGreenDr    . g:none
exe "hi! SignColumn    " . g:bgGreyLr      . g:fgGreyDr     . g:none
exe "hi! MoreMsg       " . g:bgNone        . g:fgBlueD      . g:none
exe "hi! ModeMsg       " . g:bgNone        . g:fgInherit    . g:none
exe "hi! ErrorMsg      " . g:bgRedD        . g:fgGreyLst    . g:none
exe "hi! WarningMsg    " . g:bgOrangeD     . g:fgGreyLst    . g:none
exe "hi! Question      " . g:bgGreenD      . g:fgWhite      . g:none
exe "hi! Ignore        "                   . g:fgInvert
" == custom types by enterprise ==
exe "hi! String        " . g:bgNone        . g:fgOrangeDr   . g:none
exe "hi! BString       " . g:bgNone        . g:fgOrangeDr   . g:bold
exe "hi! Function      " . g:bgNone        . g:fgBlueD      . g:bold
" == JavaScript ==
exe "hi! jsFuncCall    " . g:bgNone        . g:fgBlueDr     . g:none
