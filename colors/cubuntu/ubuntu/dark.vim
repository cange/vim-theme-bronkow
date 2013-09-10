let g:Powerline_colorscheme = 'solarized'
" on the fly theme reload
if exists('g:Powerline_loaded')
  call Pl#ReloadColorscheme()
endif

" ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:colors.white.default.hex . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:colors.green.dark.hex    . "\x7"
  silent                    !echo -ne "\033]12;".g:colors.grey.light.hex    . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:colors.grey.light.hex    . "\007"
endif

exe "hi! Normal        " . g:bgDAubergineDr . g:fgGreyLr       . g:none
exe "hi! Comment       " . g:bgNone         . g:fgGreyL        . g:none
exe "hi! Constant      " . g:bgNone         . g:fgLAubergineLr . g:none
" NERDTree bookmark
exe "hi! Identifier    " . g:bgNone         . g:fgBlue   . g:none
exe "hi! Statement     " . g:bgNone         . g:fgMAubergine   . g:bold
exe "hi! PreProc       " . g:bgNone         . g:fgOrange       . g:none
exe "hi! Type          " . g:bgNone         . g:fgGreenD       . g:none
exe "hi! Special       " . g:bgNone         . g:fgMAubergineL  . g:none
" == Text Markup ==
exe "hi! Underlined    " . g:bgInherit      . g:fgInherit      . g:underline
exe "hi! Error         " . g:bgOrangeD      . g:fgGreyLr       . g:none
exe "hi! Todo          " . g:bgOrangeD      . g:fgGreyD        . g:none
exe "hi! MatchParen    " . g:bgMAubergineDr . g:fgGreyLr       . g:bold
" Invisible character colors
exe "hi! NonText       " . g:bgNone         . g:fgGreyD        . g:none
exe "hi! SpecialKey    " . g:bgNone         . g:fgGreyD        . g:none
exe "hi! Title         " . g:bgNone         . g:fgOrangeD         . g:none
" == Text Selection ==
exe "hi! CursorIM      " . g:bgGreen        . g:fgInvert       . g:none
exe "hi! CursorColumn  " . g:bgOrange       . g:fgNone         . g:none
exe "hi! CursorLine    " . g:bgDAubergineD . g:fgNone         . g:none
" == Cursors ==
exe "hi! Cursor        " . g:bgGreenD       . g:none
exe "hi! iCursor       " . g:bgGreyDr       . g:none
exe "hi! vCursor       " . g:bgOrangeD      . g:fgGreyDst      . g:none
exe "hi! rCursor       " . g:bgWhite        . g:none
" == Selections ==
exe "hi! Visual        " . g:bgMAubergine   . g:fgGreyDst
exe "hi! VisualNOS     " . g:bgGreyD        . g:fgGreyDst      . g:none
exe "hi! IncSearch     " . g:bgGreenDr      . g:fgGreen
exe "hi! Search        " . g:bgGreenDr      . g:fgGreyLr
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgGreyD        . g:fgGreyLr
exe "hi! PmenuSel      " . g:bgBlueDr . g:fgGreyLr
exe "hi! PMenuSbar     " . g:bgGrey
exe "hi! PMenuThumb    " . g:bgBlueD
" -- vertical separator line --
exe "hi! Folded        " . g:bgGreyD        . g:fgGreyL        . g:none
exe "hi! FoldColumn    " . g:bgGreyD        . g:fgGreyL        . g:none
exe "hi! VertSplit     " . g:bgGrey         . g:fgGrey         . g:none
exe "hi! LineNr        " . g:bgGreyDst      . g:fgGrey         . g:none
exe "hi! CursorLineNr  " . g:bgDAubergineDr . g:fgAubergineDr       . g:bold
exe "hi! ColorColumn   " . g:bgMAubergineDr . g:fgNone         . g:none
" -- Status bars --
exe "hi! StatusLine    " . g:bgGreyD        . g:fgGreyLr       . g:none
exe "hi! StatusLineNC  " . g:bgGrey         . g:fgNone         . g:none
exe "hi! WildMenu      " . g:bgBlueDr       . g:fgGreyLst      . g:none
exe "hi! TabLine       " . g:bgGreyLst      . g:fgGreyDr       . g:none
exe "hi! TabLineFill   " . g:bgGreyLst      . g:fgGrey         . g:none
exe "hi! TabLineSel    " . g:bgBlueLr       . g:fgGreyLst      . g:none
" == Spelling ==
exe "hi! SpellBad      " . g:bgNone         . g:fgNone         . g:undercurl . g:spOrange
exe "hi! SpellCap      " . g:bgNone         . g:fgNone         . g:undercurl . g:spOrangeD
exe "hi! SpellRare     " . g:bgNone         . g:fgNone         . g:undercurl . g:spOrangeLr
exe "hi! SpellLocal    " . g:bgNone         . g:fgNone         . g:undercurl . g:spOrangeDr
" == Diff ==
exe "hi! DiffAdd       " . g:bgNone         . g:fgGreenD       . g:none
exe "hi! DiffChange    " . g:bgNone         . g:fgBlueL        . g:none
exe "hi! DiffDelete    " . g:bgNone         . g:fgOrangeL      . g:none
exe "hi! DiffText      " . g:bgNone         . g:fgDAubergineL  . g:none
" == Misc ==
exe "hi! Directory     " . g:bgNone         . g:fgBlue         . g:none
exe "hi! SignColumn    " . g:bgGreyD        . g:fgGreyLr       . g:none
exe "hi! MoreMsg       " . g:bgNone         . g:fgBlueL        . g:none
exe "hi! ModeMsg       " . g:bgNone         . g:fgInherit      . g:none
exe "hi! ErrorMsg      " . g:bgInherit      . g:fgOrange       . g:none
exe "hi! WarningMsg    " . g:bgInherit      . g:fgOrangeL      . g:none
exe "hi! Question      " . g:bgNone         . g:fgGreenD       . g:none
exe "hi! Ignore        "                    . g:fgInvert
" == custom types by cange ==
exe "hi! String        " . g:bgNone         . g:fgOrangeD      . g:none
exe "hi! BString       " . g:bgNone         . g:fgOrangeD      . g:bold
exe "hi! Function      " . g:bgNone         . g:fgMAubergineD  . g:bold
