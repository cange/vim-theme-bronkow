let g:Powerline_colorscheme = 'bronkowDark'
" on the fly theme reload
if exists('g:Powerline_loaded')
  call Pl#ReloadColorscheme()
endif

" " ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:colors.white.default.hex . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:colors.green.dark.hex    . "\x7"
  silent                    !echo -ne "\033]12;".g:colors.grey.light.hex    . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:colors.grey.light.hex    . "\007"
endif

exe "hi! Normal        " . g:bgGreyDst     . g:fgPurpleLr   . g:none
exe "hi! Comment       " . g:bgNone        . g:fgGrey       . g:none
exe "hi! Constant      " . g:bgNone        . g:fgGreyLr     . g:none
" NERDTree bookmark
exe "hi! Identifier    " . g:bgNone        . g:fgBlue       . g:none
exe "hi! Statement     " . g:bgNone        . g:fgBlueL      . g:bold
exe "hi! PreProc       " . g:bgNone        . g:fgYellowD    . g:none
exe "hi! Type          " . g:bgNone        . g:fgGreenL     . g:none
exe "hi! Special       " . g:bgNone        . g:fgBlueLr     . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit     . g:fgInherit    . g:underline
exe "hi! Error         " . g:bgGreyD       . g:fgRedDr      . g:none
exe "hi! Todo          " . g:bgGreyD       . g:fgYellow     . g:none
exe "hi! MatchParen    " . g:bgBlueD       . g:fgGreyLr     . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone        . g:fgGreyD      . g:none
exe "hi! SpecialKey    " . g:bgNone        . g:fgGreyD      . g:none
exe "hi! Title         " . g:bgNone        . g:fgOrangeD    . g:none
" == Text Selection ==
exe "hi! CursorIM      " . g:bgGreen       . g:fgInvert     . g:none
exe "hi! CursorColumn  " . g:bgRed         . g:fgNone       . g:none
exe "hi! CursorLine    " . g:bgNone        . g:fgNone       . g:bold
" == Cursors ==
exe "hi! Cursor        " . g:bgGreenD      . g:fgGreyLst    . g:none
exe "hi! iCursor       " . g:bgGreyLr                       . g:none
exe "hi! vCursor       " . g:bgOrangeD     . g:fgGreyLst    . g:bold
exe "hi! rCursor       " . g:bgWhite                        . g:none
" == Selections ==
exe "hi! Visual        " . g:bgGreyD       . g:fgGreyDst    . g:none
exe "hi! VisualNOS     " . g:bgGreyD       . g:fgGreyDst    . g:none
exe "hi! IncSearch     " . g:bgGreenD      . g:fgGreenLr    . g:none
exe "hi! Search        " . g:bgGreenDr     . g:fgGreenL     . g:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgGreyD       . g:fgGreyLr     . g:none
exe "hi! PmenuSel      " . g:bgBlueDr      . g:fgGreyLr     . g:none
exe "hi! PMenuSbar     " . g:bgGrey                         . g:none
exe "hi! PMenuThumb    " . g:bgBlueD                        . g:none
" -- vertical separator line --
exe "hi! Folded        " . g:bgGreyDr      . g:fgBlue       . g:none
exe "hi! FoldColumn    " . g:bgGreyDr      . g:fgYellow     . g:none
exe "hi! VertSplit     " . g:bgGreyD       . g:fgGreyD      . g:none
exe "hi! LineNr        " . g:bgGreyDr      . g:fgGreyL      . g:none
exe "hi! CursorLineNr  " . g:bgGreyDr      . g:fgGreyLr     . g:bold
exe "hi! ColorColumn   " . g:bgGreyDr      . g:fgNone       . g:none
" -- Status bars --
exe "hi! StatusLine    " . g:bgGreyD       . g:fgGreyLr     . g:none
exe "hi! StatusLineNC  " . g:bgGrey        . g:fgNone       . g:none
exe "hi! WildMenu      " . g:bgBlueDr      . g:fgGreyLst    . g:none
exe "hi! TabLine       " . g:bgGreyLst     . g:fgGreyDr     . g:none
exe "hi! TabLineFill   " . g:bgGreyLst     . g:fgGrey       . g:none
exe "hi! TabLineSel    " . g:bgBlueLr      . g:fgGreyLst    . g:none
" == Spelling ==
exe "hi! SpellBad      " . g:bgNone        . g:fgNone       . g:undercurl . g:spRed
exe "hi! SpellCap      " . g:bgNone        . g:fgNone       . g:undercurl . g:spYellowD
exe "hi! SpellRare     " . g:bgNone        . g:fgNone       . g:undercurl . g:spYellowLr
exe "hi! SpellLocal    " . g:bgNone        . g:fgNone       . g:undercurl . g:spYellowDr
" == Diff ==
exe "hi! DiffAdd       " . g:bgGreenLr     . g:fgGreenDr    . g:none
exe "hi! DiffChange    " . g:bgBlueLr      . g:fgBlueDr     . g:none
exe "hi! DiffDelete    " . g:bgRedLr       . g:fgRedDr      . g:none
exe "hi! DiffText      " . g:bgOrangeLr    . g:fgOrangeDr   . g:none
" == Git ==
exe "hi! GitGutterAdd          " . g:bgGreen    . g:fgGreen    . g:none
exe "hi! GitGutterChange       " . g:bgYellowDr . g:fgYellowDr . g:none
exe "hi! GitGutterDelete       " . g:bgRedDr    . g:fgRedDr    . g:none
exe "hi! GitGutterChangeDelete " . g:bgOrange   . g:fgRedDr    . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone        . g:fgGreen      . g:none
exe "hi! SignColumn    " . g:bgGreyD       . g:fgGreyLr     . g:none
exe "hi! MoreMsg       " . g:bgNone        . g:fgBlueL      . g:none
exe "hi! ModeMsg       " . g:bgNone        . g:fgInherit    . g:none
exe "hi! ErrorMsg      " . g:bgInherit     . g:fgRed        . g:none
exe "hi! WarningMsg    " . g:bgInherit     . g:fgOrangeL    . g:none
exe "hi! Question      " . g:bgNone        . g:fgGreenD     . g:none
exe "hi! Ignore        "                   . g:fgInvert     . g:none
" == custom types by cange ==
exe "hi! String        " . g:bgNone        . g:fgRedD       . g:none
exe "hi! BString       " . g:bgNone        . g:fgRedD       . g:bold
exe "hi! Function      " . g:bgNone        . g:fgBlue       . g:bold
" == JavaScript ==
exe "hi! jsFuncCall    " . g:bgNone        . g:fgBlueL      . g:none
