" Check key colors with
" :so $VIMRUNTIME/syntax/hitest.vim

ru colors/bronkow/material/colors.vim
ru colors/bronkow/formats.vim
ru colors/bronkow/converters.vim

call Converters#translate(g:colors)

" ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;" . g:colors.White.medium.gui . "\x7"
  let &t_EI                       = "\<Esc>]12;" . g:colors.LightGreen.light.gui  . "\x7"
  silent                    !echo -ne "\033]12;" . g:colors.Grey.light.gui   . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]" . g:colors.Grey.light.gui   . "\007"
endif

" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu                 " . g:bgShadeD      . g:fgLightBlueLr
exe "hi! PmenuSel              " . g:bgShadeDr     . g:fgGreyLr     . g:bold
exe "hi! PMenuSbar             " . g:bgShadeLr
exe "hi! PMenuThumb            " . g:bgShadeL

" -- vertical separator line --
exe "hi! FoldColumn            " . g:bgRedL        . g:fgOrangeL    . g:none
exe "hi! Folded                " . g:bgShadeL      . g:fgOrangeL    . g:none
exe "hi! VertSplit             " . g:bgShadeDr     . g:fgShadeDr    . g:none
" -- Text Selection --
exe "hi! ColorColumn           " . g:bgShadeD      . g:fgNone       . g:none
exe "hi! CursorColumn          " . g:bgRedL        . g:fgNone       . g:none
exe "hi! LineNr                " . g:bgShadeD      . g:fgShadeLr    . g:none
exe "hi! CursorLineNr          " . g:bgShadeDr     . g:fgShadeLr    . g:bold
exe "hi! CursorLine            " . g:bgShadeD      . g:fgNone       . g:bold
" -- UI – Git --
exe "hi! GitGutterAdd          " . g:bgShadeD      . g:fgLightGreenD. g:none
exe "hi! GitGutterChange       " . g:bgShadeD      . g:fgOrangeL    . g:none
exe "hi! GitGutterDelete       " . g:bgShadeD      . g:fgRedD       . g:none
exe "hi! GitGutterChangeDelete " . g:bgShadeD      . g:fgRedL       . g:none
" -- Status bars --
exe "hi! StatusLine            " . g:bgShadeDr     . g:fgShadeLr    . g:none
exe "hi! StatusLineNC          " . g:bgShadeDr     . g:fgNone       . g:none
exe "hi! WildMenu              " . g:bgLightBlueD  . g:fgShadeLr    . g:none
exe "hi! TabLine               " . g:bgShadeLr     . g:fgShadeDr    . g:none
exe "hi! TabLineFill           " . g:bgShadeLr     . g:fgGreyL      . g:none
exe "hi! TabLineSel            " . g:bgLightBlueL  . g:fgShadeLr    . g:none
" -- Spelling --
exe "hi! SpellBad              " . g:bgNone        . g:fgNone       . g:undercurl . g:spRed
exe "hi! SpellCap              " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
exe "hi! SpellRare             " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeL
exe "hi! SpellLocal            " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
" -- Diff --
exe "hi! DiffAdd               " . g:bgNone        . g:fgLightGreenD. g:none
exe "hi! DiffChange            " . g:bgNone        . g:fgLightBlueL . g:none
exe "hi! DiffDelete            " . g:bgNone        . g:fgRedL       . g:none
exe "hi! DiffText              " . g:bgNone        . g:fgOrangeL    . g:none
" -- Misc --
exe "hi! Directory             " . g:bgNone        . g:fgShadeLr    . g:none
exe "hi! SignColumn            " . g:bgShadeD      . g:fgShadeLr    . g:none
exe "hi! MoreMsg               " . g:bgNone        . g:fgLightBlueL . g:none
exe "hi! ModeMsg               " . g:bgNone                         . g:none
exe "hi! ErrorMsg              " . g:bgRedD        . g:fgOrangeL    . g:none
exe "hi! WarningMsg            "                   . g:fgOrangeL    . g:none
exe "hi! Question              " . g:bgNone        . g:fgLightGreenD. g:none
" -- Cursors --
exe "hi! Cursor                " . g:bgGreyLr                       . g:none
exe "hi! iCursor               " . g:bgLightGreenD                  . g:none
exe "hi! vCursor               " . g:bgOrangeL    . g:fgBlack
exe "hi! rCursor               " . g:bgWhite                        . g:none
" -- Selections --
exe "hi! Visual                " . g:bgShadeLr    . g:fgNone        . g:none
exe "hi! Search                " . g:bgShadeLr    . g:fgGreyL       . g:none
exe "hi! IncSearch             " . g:bgShadeLr    . g:fgLightGreenLr. g:none

" == Text Markup ==
" -- Invisible character colors --
exe "hi! NonText               " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! SpecialKey            " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! Title                 " . g:bgNone        . g:fgNone       . g:bold
"
" == Syntax ==
exe "hi! Normal                " . g:fgGreyLr       . g:bgShadeL . g:none
exe "hi! StorageClass          " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Type                  " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Statement             " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Constant              " . g:fgOrangeL      . g:bgNone   . g:none
exe "hi! Noise                 " . g:fgCyanLr       . g:bgNone   . g:none
exe "hi! Number                " . g:fgOrangeDr     . g:bgNone   . g:none
exe "hi! String                " . g:fgLightGreenL  . g:bgNone   . g:none
exe "hi! Special               " . g:fgCyanL        . g:bgNone   . g:none
exe "hi! Boolean               " . g:fgRedL         . g:bgNone   . g:none
exe "hi! Comment               " . g:fgGreyD        . g:bgNone   . g:none
exe "hi! Error                 " . g:fgRedL         . g:bgNone   . g:none
exe "hi! Keyword               " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! PreProc               " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Identifier            " . g:fgLightBlueLr  . g:bgNone   . g:none
exe "hi! Include               " . g:fgDeepPurpleLr . g:bgNone   . g:none
exe "hi! Operator              " . g:fgCyanLr       . g:bgNone   . g:none
exe "hi! Todo                  " . g:fgOrangeD      . g:bgNone   . g:none
"exe "hi! Character     " . g:fgRedL       . g:bgCyanD  . g:none
"exe "hi! Conditional   " . g:fgLightBlue        . g:bgCyanD  . g:none
"exe "hi! Exception     " . g:fgLightGreenD      . g:bgCyanD  . g:none
"exe "hi! Function      " . g:fgLightBlue        . g:bgCyanD  . g:none
"exe "hi! Label         " . g:fgRedL       . g:bgCyanD  . g:none
"exe "hi! MatchParen    " . g:fgLightBlueD       . g:bgLightGreen  . g:bold
"exe "hi! Repeat        " . g:fgLightGreen       . g:bgCyanD  . g:none
"exe "hi! SpecialChar   " . g:fgCyanLr      . g:bgCyanD  . g:none
"exe "hi! Structure     " . g:fgLightGreen       . g:bgCyanD  . g:none
"exe "hi! Underlined    " . g:bgInherit     . g:fgInherit    . g:underline
" -- CSS/SASS exceptions --
hi link cssClassNameDot      Operator
hi link cssProp              Special
hi link cssTagName           Normal
hi link scssSelectorName     Constant
hi link scssVariable         Normal
" -- HTML exceptions --
hi link htmlArg              Constant
hi link htmlTagName          Boolean
hi link jsxAttrib            Constant
hi link jsxTag               Identifier
hi link jsxTagName           Boolean
hi link slimClass            Constant
hi link slimClassChar        Operator
hi link slimText             Special
" -- JavaScript --
hi link jsClassDefinition    Constant
hi link jsDestructuringBlock String
hi link jsObjectProp         Identifier
hi link jsThis               Constant

" === Plugins ===
" -- NERDTree --
exe "hi! NERDTreeBookmark           " . g:fgShadeLr
exe "hi! NERDTreeLinkFile           " . g:fgShadeLr
exe "hi! NERDTreeBookmarkName       " . g:fgLightBlueLr
exe "hi! NERDTreeBookmarksHeader    " . g:bgShadeLr      . g:fgShadeL  . g:bold
exe "hi! NERDTreeCWD                " . g:fgLightBlueLr  . g:bold
exe "hi! NERDTreeClosable           " . g:fgShadeLr
exe "hi! NERDTreeDir                " . g:fgCyanL        . g:bold
exe "hi! NERDTreeDirSlash           " . g:fgCyanD
exe "hi! NERDTreeExecFile           " . g:fgOrangeL
exe "hi! NERDTreeFile               " . g:fgGreyL
exe "hi! NERDTreeFlags              " . g:fgInvert
exe "hi! NERDTreeGitStatusDirClean  " . g:fgLightGreenLr
exe "hi! NERDTreeGitStatusDirDirty  " . g:fgOrangeL
exe "hi! NERDTreeGitStatusModified  " . g:fgLightBlueLr
exe "hi! NERDTreeGitStatusRenamed   " . g:fgRedL
exe "hi! NERDTreeGitStatusStaged    " . g:fgShadeLr
exe "hi! NERDTreeGitStatusUnmerged  " . g:fgShadeLr
exe "hi! NERDTreeGitStatusUntracked " . g:fgLightGreenD
exe "hi! NERDTreeHelp               " . g:fgShadeLr
exe "hi! NERDTreeHelpKey            " . g:fgGreyLr
exe "hi! NERDTreeOpenable           " . g:fgShadeLr
exe "hi! NERDTreeToggleOff          " . g:fgRedL
