" Check key colors with
" :so $VIMRUNTIME/syntax/hitest.vim
"let g:Powerline_colorscheme = 'bronkowMaterialDark'

ru colors/bronkow/material/colors.vim
ru colors/bronkow/formats.vim
ru colors/bronkow/converters.vim

call Converters#translate(g:colors)

" ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:colors.white.medium.hex . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:colors.green.light.hex . "\x7"
  silent                    !echo -ne "\033]12;".g:colors.grey.light.hex    . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:colors.grey.light.hex    . "\007"
endif
"
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgShadeD      . g:fgShadeL
exe "hi! PmenuSel      " . g:bgShadeDr     . g:fgShadeLr
exe "hi! PMenuSbar     " . g:bgBlueL
exe "hi! PMenuThumb    " . g:bgBlueD
" -- vertical separator line --
exe "hi! FoldColumn    " . g:bgRedL        . g:fgOrangeL    . g:none
exe "hi! Folded        " . g:bgShadeL      . g:fgOrangeL    . g:none
exe "hi! VertSplit     " . g:bgShadeD      . g:fgShadeD     . g:none
" -- Text Selection --
exe "hi! ColorColumn   " . g:bgShadeD      . g:fgNone       . g:none
"exe "hi! CursorColumn  " . g:bgRedL      . g:fgNone        . g:none
exe "hi! LineNr        " . g:bgShadeD      . g:fgGreyD      . g:none
exe "hi! CursorLineNr  " . g:bgShadeDr     . g:fgGrey       . g:bold
exe "hi! CursorLine    " . g:bgShadeD      . g:fgNone       . g:bold
" -- Status bars --
exe "hi! StatusLine    " . g:bgShadeDr     . g:fgShadeLr    . g:none
exe "hi! StatusLineNC  " . g:bgShadeDr     . g:fgNone       . g:none
exe "hi! WildMenu      " . g:bgBlueD       . g:fgShadeLr    . g:none
exe "hi! TabLine       " . g:bgShadeLr     . g:fgShadeDr    . g:none
exe "hi! TabLineFill   " . g:bgShadeLr     . g:fgGrey       . g:none
exe "hi! TabLineSel    " . g:bgBlueL       . g:fgShadeLr    . g:none
" -- Spelling --
exe "hi! SpellBad      " . g:bgNone        . g:fgNone       . g:undercurl . g:spRed
exe "hi! SpellCap      " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
exe "hi! SpellRare     " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeL
exe "hi! SpellLocal    " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
" -- Diff --
exe "hi! DiffAdd       " . g:bgNone        . g:fgGreenD     . g:none
exe "hi! DiffChange    " . g:bgNone        . g:fgBlueL      . g:none
exe "hi! DiffDelete    " . g:bgNone        . g:fgRedL      . g:none
exe "hi! DiffText      " . g:bgNone        . g:fgOrangeL    . g:none
" -- UI – Git --
exe "hi! GitGutterAdd          " . g:bgNone      . g:fgGreenD  . g:none
exe "hi! GitGutterChange       " . g:bgNone      . g:fgOrangeL . g:none
exe "hi! GitGutterDelete       " . g:bgNone      . g:fgRedL   . g:none
exe "hi! GitGutterChangeDelete " . g:bgNone      . g:fgRedL   . g:none
" -- Misc --
exe "hi! Directory             " . g:bgNone      . g:fgShadeLr . g:none
exe "hi! SignColumn            " . g:bgShadeD    . g:fgShadeLr . g:none
exe "hi! MoreMsg               " . g:bgNone      . g:fgBlueL   . g:none
exe "hi! ModeMsg               " . g:bgNone                    . g:none
exe "hi! ErrorMsg              " . g:bgRedD      . g:fgOrangeL . g:none
exe "hi! WarningMsg            "                 . g:fgOrangeL . g:none
exe "hi! Question              " . g:bgNone      . g:fgGreenD  . g:none
" -- Cursors --
exe "hi! Cursor                " . g:bgGreyLr                  . g:none
exe "hi! iCursor               " . g:bgGreenD                  . g:none
exe "hi! vCursor               " . g:bgOrangeL   . g:fgBlack
exe "hi! rCursor               " . g:bgWhite                   . g:none
" -- Selections --
exe "hi! Visual                " . g:bgShadeLr   . g:fgNone    . g:none
exe "hi! Search                " . g:bgRedL      . g:fgShadeDr . g:none
exe "hi! IncSearch             " . g:bgRedL      . g:fgWhite   . g:none
" -- NERDTree --
exe "hi! NERDTreeBookmark           " . g:fgShadeL
exe "hi! NERDTreeBookmarkName       " . g:fgBlueL
exe "hi! NERDTreeBookmarksHeader    " . g:fgGreenD
exe "hi! NERDTreeCWD                " . g:fgRedL
exe "hi! NERDTreeClosable           " . g:fgShadeLr
exe "hi! NERDTreeDir                " . g:fgCyanLr
exe "hi! NERDTreeDirSlash           " . g:fgCyanL
exe "hi! NERDTreeExecFile           " . g:fgOrangeL
exe "hi! NERDTreeFile               " . g:fgGreyL
exe "hi! NERDTreeHelp               " . g:fgShadeLr
exe "hi! NERDTreeHelpKey            " . g:fgGreyLr
exe "hi! NERDTreeOpenable           " . g:fgShadeLr
exe "hi! NERDTreeToggleOff          " . g:fgRedL
exe "hi! NERDTreeGitStatusDirDirty  " . g:fgOrangeDr
exe "hi! NERDTreeGitStatusModified  " . g:fgOrangeD
exe "hi! NERDTreeGitStatusStaged    " . g:fgShadeLr
exe "hi! NERDTreeGitStatusUnmerged  " . g:fgShadeLr
exe "hi! NERDTreeGitStatusDirClean  " . g:fgGreenLr
exe "hi! NERDTreeGitStatusUntracked " . g:fgBlueD



" == TMRU ==
exe "hi! InputlListCursor "        . g:bgBlueD . g:bold
exe "hi! InputlListSelected "      . g:bgGreenD
" == Text Markup ==
"exe "hi! Underlined    " . g:bgInherit     . g:fgInherit    . g:underline
" -- Invisible character colors --
exe "hi! NonText      " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! SpecialKey   " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! Title        " . g:bgNone        . g:fgOrangeD    . g:none
"
" == Syntax ==
exe "hi! Normal             " . g:fgGreyLr       . g:bgShadeL . g:none
exe "hi! StorageClass       " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Type               " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Statement          " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Constant           " . g:fgOrangeL      . g:bgNone   . g:none
exe "hi! Noise              " . g:fgCyanLr       . g:bgNone   . g:none
exe "hi! Number             " . g:fgOrangeDr     . g:bgNone   . g:none
exe "hi! String             " . g:fgGreenL       . g:bgNone   . g:none
exe "hi! Special            " . g:fgCyanL        . g:bgNone   . g:none
exe "hi! Boolean            " . g:fgRedL         . g:bgNone   . g:none
exe "hi! Comment            " . g:fgGreyD        . g:bgNone   . g:none
exe "hi! Error              " . g:fgRedL        . g:bgNone   . g:none
exe "hi! Keyword            " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! PreProc            " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Identifier         " . g:fgBlueLr       . g:bgNone   . g:none
exe "hi! Include            " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Operator           " . g:fgCyanLr       . g:bgNone   . g:none
" -- CSS/SASS exceptions --
exe "hi! cssTagName         " . g:fgGreyLr       . g:bgNone   . g:none
exe "hi! cssProp            " . g:fgCyanL        . g:bgNone   . g:none
exe "hi! cssClassNameDot    " . g:fgCyanLr       . g:bgNone   . g:none
exe "hi! scssSelectorName   " . g:fgOrangeL      . g:bgNone   . g:none
exe "hi! scssVariable       " . g:fgGreyLr       . g:bgNone   . g:none
" -- HTML exceptions --
exe "hi! htmlTagName        " . g:fgRedL         . g:bgNone   . g:none
exe "hi! slimText           " . g:fgCyanL        . g:bgNone   . g:none

"
"
"exe "hi! Character     " . g:fgRedL       . g:bgCyanD  . g:none
"exe "hi! Conditional   " . g:fgBlue        . g:bgCyanD  . g:none
"exe "hi! Exception     " . g:fgGreenD      . g:bgCyanD  . g:none
"exe "hi! Function      " . g:fgBlue        . g:bgCyanD  . g:none
"exe "hi! Label         " . g:fgRedL       . g:bgCyanD  . g:none
"exe "hi! MatchParen    " . g:fgBlueD       . g:bgGreen  . g:bold
"exe "hi! Repeat        " . g:fgGreen       . g:bgCyanD  . g:none
"exe "hi! SpecialChar   " . g:fgCyanLr      . g:bgCyanD  . g:none
"exe "hi! Structure     " . g:fgGreen       . g:bgCyanD  . g:none
"exe "hi! Todo          " . g:fgOrangeL     . g:bgCyanD  . g:none
