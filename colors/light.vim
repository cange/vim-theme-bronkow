let g:Powerline_colorscheme = 'cubuntuLight'
" on the fly theme reload
if exists('g:Powerline_loaded')
  call Pl#ReloadColorscheme()
endif

" ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:greyD       . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:modeNormalD . "\x7"
  silent                    !echo -ne "\033]12;".g:greyDst     . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:greyDst     . "\007"
endif

exe "hi! Normal        " . g:bgGreyLst      . g:fgGrey       . g:none
exe "hi! Comment       " . g:bgNone         . g:fgGreyLr     . g:none
exe "hi! Constant      " . g:bgNone         . g:fgPurpleLr   . g:none
" NERDTree bookmark
exe "hi! Identifier    " . g:bgNone         . g:fgBlueD      . g:none
exe "hi! Statement     " . g:bgNone         . g:fgCyan       . g:bold
exe "hi! PreProc       " . g:bgNone         . g:fgYellow     . g:none
exe "hi! Type          " . g:bgNone         . g:fgGreenDr    . g:none
exe "hi! Special       " . g:bgNone         . g:fgCyan       . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit      . g:fgInherit    . g:underline
exe "hi! Error         " . g:bgRedD         . g:fgGreyLr     . g:none
exe "hi! Todo          " . g:bgYellowL      . g:fgGreyD      . g:none
exe "hi! MatchParen    " . g:bgCyan         . g:fgInvert     . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone         . g:fgGreyLr     . g:none
exe "hi! SpecialKey    " . g:bgNone         . g:fgGreyLr     . g:none
exe "hi! Title         " . g:bgNone         . g:fgBlueD      . g:bold
" == Text Selection ==
exe "hi! CursorIM      " . g:bgGreen        . g:fgInvert     . g:none
exe "hi! CursorColumn  " . g:bgYellowLr     . g:fgNone       . g:none
exe "hi! CursorLine    " . g:bgWhite        . g:fgNone       . g:none
" == Cursors ==
exe "hi! Cursor        " . g:bgGreenD                        . g:none
exe "hi! iCursor       " . g:bgBlueD                         . g:none
exe "hi! rCursor       " . g:bgCyan                          . g:none
exe "hi! vCursor       " . g:bgOrangeL      . g:fgInvert     . g:none
" == Selections ==
exe "hi! Visual        " . g:bgOrangeLr     . g:fgGreyLst    . g:none
exe "hi! VisualNOS     " . g:bgNone         . g:fgOrangeL    . g:underline
exe "hi! IncSearch     " . g:bgGreenD       . g:fgGreenLr    . g:none
exe "hi! Search        " . g:bgGreenDr      . g:fgGreenD     . g:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgGreyLr       . g:fgGreyL      . g:none
exe "hi! PmenuSel      " . g:bgGreyL        . g:fgGreyLst    . g:none
exe "hi! PMenuSbar     " . g:bgGreyL                         . g:none
exe "hi! PMenuThumb    " . g:bgRedD                          . g:none
" -- vertical separator line --
exe "hi! Folded        " . g:bgGreyLst      . g:fgYellowD    . g:none
exe "hi! FoldColumn    " . g:bgGreyL        . g:fgGreyD      . g:none
exe "hi! VertSplit     " . g:bgGreyLr       . g:fgGreyLr     . g:none
exe "hi! LineNr        " . g:bgGreyL        . g:fgGreyLr     . g:none
exe "hi! CursorLineNr  " . g:bgGreyLr       . g:fgGreyLst    . g:none
exe "hi! ColorColumn   " . g:bgWhite        . g:fgNone       . g:none
" -- Status bars --
exe "hi! StatusLine    " . g:bgGreyLr       . g:fgInherit    . g:none
exe "hi! StatusLineNC  " . g:bgGreyLr       . g:fgNone       . g:none
exe "hi! TabLine       " . g:bgGreyDst      . g:fgGreyLst    . g:none
exe "hi! TabLineFill   " . g:bgGreyDst      . g:fgGrey       . g:none
exe "hi! TabLineSel    " . g:bgBlueDr       . g:fgGreyLst    . g:none
" == Spelling ==
exe "hi! SpellBad      " . g:bgNone         . g:fgNone       . g:undercurl . g:spRed
exe "hi! SpellCap      " . g:bgNone         . g:fgNone       . g:undercurl . g:spYellowD
exe "hi! SpellRare     " . g:bgNone         . g:fgNone       . g:undercurl . g:spYellowLr
exe "hi! SpellLocal    " . g:bgNone         . g:fgNone       . g:undercurl . g:spYellowDr
"  == Diff ==
exe "hi! DiffAdd       " . g:bgGreenLr      . g:fgGreenDr    . g:none
exe "hi! DiffChange    " . g:bgBlueLr       . g:fgBlueD      . g:none
exe "hi! DiffDelete    " . g:bgRedLr        . g:fgRedDr      . g:none
exe "hi! DiffText      " . g:bgOrangeLr     . g:fgOrangeDr   . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone         . g:fgGreenD     . g:none
exe "hi! SignColumn    " . g:bgGreyL        . g:fgGreyDr     . g:none
exe "hi! MoreMsg       " . g:bgNone         . g:fgBlueD      . g:none
exe "hi! ModeMsg       " . g:bgNone         . g:fgInherit    . g:none
exe "hi! ErrorMsg      " . g:bgRedL         . g:fgGreyLst    . g:none
exe "hi! WarningMsg    " . g:bgInherit      . g:fgOrange     . g:none
exe "hi! Question      " . g:bgGreenD       . g:fgWhite      . g:none
exe "hi! WildMenu      " . g:bgNone         . g:fgBlue       . g:none
exe "hi! Ignore        "                    . g:fgInvert
" == custom types by enterprise ==
exe "hi! String        " . g:bgNone         . g:fgRedD       . g:none
exe "hi! BString       " . g:bgNone         . g:fgRedD       . g:bold
exe "hi! Function      " . g:bgNone         . g:fgCyanL      . g:bold
