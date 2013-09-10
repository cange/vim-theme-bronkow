let g:Powerline_colorscheme = 'solarized'
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

exe "hi! Normal        " . g:bgGreyLr      . g:fgDAubergineD . g:none
exe "hi! Comment       " . g:bgNone        . g:fgBlue     . g:none
exe "hi! Constant      " . g:bgNone        . g:fgDAubergine . g:none
" NERDTree bookmark
exe "hi! Identifier    " . g:bgNone        . g:fgBlueD      . g:none
exe "hi! Statement     " . g:bgNone        . g:fgCyan       . g:bold
exe "hi! PreProc       " . g:bgNone        . g:fgOrangeD   . g:none
exe "hi! Type          " . g:bgNone        . g:fgGreenDr    . g:none
exe "hi! Special       " . g:bgNone        . g:fgCyanDr     . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit     . g:fgInherit    . g:underline
exe "hi! Error         " . g:bgInvert      . g:fgOrangeDr   . g:bold
exe "hi! Todo          " . g:bgInvert      . g:fgOrange     . g:bold
exe "hi! MatchParen    " . g:bgCyan        . g:fgInvert     . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone        . g:fgGreyLr     . g:none
exe "hi! SpecialKey    " . g:bgNone        . g:fgGreyLr     . g:none
exe "hi! Title         " . g:bgNone        . g:fgBlueD      . g:bold
" == Text Selection ==
exe "hi! CursorIM      " . g:bgGreen       . g:fgGreenDr    . g:none
exe "hi! CursorColumn  " . g:bgOrangeLr    . g:fgNone       . g:none
exe "hi! CursorLine    " . g:bgGreyLst     . g:fgNone       . g:none
" == Cursors ==
exe "hi! Cursor        " . g:bgGreenD      . g:fgWhite      . g:none
exe "hi! iCursor       " . g:bgBlueD                        . g:none
exe "hi! rCursor       " . g:bgCyan                         . g:none
exe "hi! vCursor       " . g:bgOrangeLr    . g:fgOrangeDr   . g:none
" == Selections ==
exe "hi! Visual        " . g:bgGreyLr      . g:fgGreyD      . g:none
exe "hi! VisualNOS     " . g:bgGreyLr      . g:fgGrey       . g:none
exe "hi! IncSearch     " . g:bgGreenD      . g:fgWhite      . g:none
exe "hi! Search        " . g:bgGreenDr     . g:fgGreyLst    . g:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgGreyLr      . g:fgGrey       . g:none
exe "hi! PmenuSel      " . g:bgBlue        . g:fgGreyLst    . g:none
exe "hi! PMenuSbar     " . g:bgGrey                         . g:none
exe "hi! PMenuThumb    " . g:bgBlueD                        . g:none
" -- vertical separator line --
exe "hi! Folded        " . g:bgGreyLst     . g:fgOrangeD    . g:none
exe "hi! FoldColumn    " . g:bgGreyL       . g:fgGreyD      . g:none
exe "hi! VertSplit     " . g:bgGreyLr      . g:fgGreyLr     . g:none
exe "hi! LineNr        " . g:bgGrey        . g:fgGreyDr   . g:none
exe "hi! CursorLineNr  " . g:bgGreyD       . g:fgGreyLst    . g:bold
exe "hi! ColorColumn   " . g:bgMAubergineLr. g:fgNone       . g:none
" -- Status bars --
exe "hi! StatusLine    " . g:bgGreyLr      . g:fgGrey       . g:none
exe "hi! StatusLineNC  " . g:bgGreyLr      . g:fgNone       . g:none
exe "hi! WildMenu      " . g:bgBlue        . g:fgWhite      . g:none
exe "hi! TabLine       " . g:bgGreyDst     . g:fgGreyLst    . g:none
exe "hi! TabLineFill   " . g:bgGreyDst     . g:fgGrey       . g:none
exe "hi! TabLineSel    " . g:bgBlueDr      . g:fgGreyLst    . g:none
" == Spelling ==
exe "hi! SpellBad      " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrange
exe "hi! SpellCap      " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
exe "hi! SpellRare     " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeLr
exe "hi! SpellLocal    " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeDr
" == Diff ==
exe "hi! DiffAdd       " . g:bgGreenLr     . g:fgGreenDr    . g:none
exe "hi! DiffChange    " . g:bgBlueLr      . g:fgBlueDr     . g:none
exe "hi! DiffDelete    " . g:bgOrangeLr    . g:fgOrangeDr      . g:none
exe "hi! DiffText      " . g:bgOrangeLr    . g:fgOrangeDr   . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone        . g:fgGreenDr    . g:none
exe "hi! SignColumn    " . g:bgGreyL       . g:fgGreyDr     . g:none
exe "hi! MoreMsg       " . g:bgNone        . g:fgBlueD      . g:none
exe "hi! ModeMsg       " . g:bgNone        . g:fgInherit    . g:none
exe "hi! ErrorMsg      " . g:bgOrangeD     . g:fgGreyLst    . g:none
exe "hi! WarningMsg    " . g:bgInherit     . g:fgOrange     . g:none
exe "hi! Question      " . g:bgGreenD      . g:fgWhite      . g:none
exe "hi! Ignore        "                   . g:fgInvert
" == custom types by enterprise ==
exe "hi! String        " . g:bgNone        . g:fgOrangeD       . g:none
exe "hi! BString       " . g:bgNone        . g:fgOrangeD       . g:bold
exe "hi! Function      " . g:bgNone        . g:fgCyan       . g:bold
