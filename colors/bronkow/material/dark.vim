" Check key colors with
" :so $VIMRUNTIME/syntax/hitest.vim

ru colors/bronkow/material/colors.vim
ru colors/bronkow/formats.vim
ru colors/bronkow/converters.vim

call converters#Translate(g:colors)

" ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;" . g:colors.white.medium.gui . "\x7"
  let &t_EI                       = "\<Esc>]12;" . g:colors.lightGreen.light.gui  . "\x7"
  silent                    !echo -ne "\033]12;" . g:colors.grey.light.gui   . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]" . g:colors.grey.light.gui   . "\007"
endif

let s:debugStyle = g:bgRedD . g:fgOrangeL . g:underlineBoldItalic

" in order of hitest output
exe "hi! SpecialKey            " . g:bgNone         . g:fgShadeD       . g:none
exe "hi! NonText               " . g:bgNone         . g:fgShadeD       . g:none
exe "hi! Directory             " . g:bgNone         . g:fgGreyL        . g:none
exe "hi! ErrorMsg              " . g:bgRedD         . g:fgGreyLr       . g:none
" -- Selections --
exe "hi! IncSearch             " . g:bgLightGreenL  . g:fgShadeD       . g:none
exe "hi! Search                " . g:bgShadeLr      . g:fgOrangeLr     . g:none
" --
exe "hi! MoreMsg               " . g:bgNone         . g:fgLightBlueL   . g:none
exe "hi! ModeMsg               " . g:bgNone                            . g:none
" -- UI --
exe "hi! LineNr                " . g:bgShadeD       . g:fgShadeLr      . g:none
exe "hi! CursorLineNr          " . g:bgShadeDr      . g:fgShadeLr      . g:bold
" --
exe "hi! Question              " . g:bgNone         . g:fgLightGreenD  . g:none
" -- UI --
exe "hi! StatusLine            " . g:bgShadeDr      . g:fgShadeLr      . g:none
exe "hi! StatusLineNC          " . g:bgShadeDr      . g:fgNone         . g:none
exe "hi! VertSplit             " . g:bgShadeDr      . g:fgShadeDr      . g:none
" --
exe "hi! Title                 " . g:bgNone        . g:fgNone          . g:bold
" -- Selections --
exe "hi! Visual                " . g:bgShadeLr     . g:fgNone          . g:none
hi link VisualNOS              Visual
" --
exe "hi! WarningMsg            "                   . g:fgOrangeL       . g:none
exe "hi! WildMenu              " . g:bgLightBlueD  . g:fgShadeLr       . g:none
" -- horizontal line --
exe "hi! Folded                " . g:bgShadeD      . g:fgOrangeL       . g:none
exe "hi! FoldColumn            " . s:debugStyle
" -- Diff --
exe "hi! DiffAdd               " . g:bgNone        . g:fgLightGreenD   . g:none
exe "hi! DiffChange            " . g:bgNone        . g:fgLightBlueL    . g:none
exe "hi! DiffDelete            " . g:bgNone        . g:fgRedL          . g:none
exe "hi! DiffText              " . g:bgNone        . g:fgOrangeL       . g:none
" --
exe "hi! SignColumn            " . s:debugStyle
" --
" TODO sort all items below in hitest order
" -- autocompletion dropdown --
exe "hi! PMenu                 " . g:bgShadeD      . g:fgLightBlueLr
exe "hi! PmenuSel              " . g:bgShadeDr     . g:fgGreyLr     . g:bold
exe "hi! PMenuSbar             " . g:bgShadeLr
exe "hi! PMenuThumb            " . g:bgShadeL
" -- Text Selection --
exe "hi! ColorColumn           " . g:bgShadeD      . g:fgNone       . g:none
exe "hi! CursorColumn          " . g:bgRedL        . g:fgNone       . g:none
exe "hi! CursorLine            " . g:bgShadeD      . g:fgNone       . g:bold
" -- UI – Git --
exe "hi! GitGutterAdd          " . g:bgShadeD      . g:fgLightGreenD. g:none
exe "hi! GitGutterChange       " . g:bgShadeD      . g:fgOrangeL    . g:none
exe "hi! GitGutterDelete       " . g:bgShadeD      . g:fgRedD       . g:none
exe "hi! GitGutterChangeDelete " . g:bgShadeD      . g:fgRedL       . g:none
" -- Status bars --
exe "hi! TabLine               " . g:bgShadeLr     . g:fgShadeDr    . g:none
exe "hi! TabLineFill           " . g:bgShadeLr     . g:fgGreyL      . g:none
exe "hi! TabLineSel            " . g:bgLightBlueL  . g:fgShadeLr    . g:none
" -- Spelling --
exe "hi! SpellBad              " . g:bgNone        . g:fgNone       . g:undercurl . g:spRed
exe "hi! SpellCap              " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
exe "hi! SpellRare             " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeL
exe "hi! SpellLocal            " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
" -- Misc --
exe "hi! SignColumn            " . g:bgShadeD      . g:fgShadeLr    . g:none
" -- Cursors --
exe "hi! Cursor                " . g:bgGreyLr                       . g:none
exe "hi! iCursor               " . g:bgLightGreenD                  . g:none
exe "hi! vCursor               " . g:bgOrangeL    . g:fgBlack
exe "hi! rCursor               " . g:bgWhite                        . g:none
" -- Invisible character colors --
"
" == Syntax ==
exe "hi! Normal                " . g:bgShadeL      . g:fgGreyLr       . g:none
exe "hi! StorageClass          " . g:bgNone        . g:fgDeepPurpleLr . g:none
exe "hi! Type                  " . g:bgNone        . g:fgDeepPurpleLr . g:none
exe "hi! Statement             " . g:bgNone        . g:fgDeepPurpleLr . g:none
exe "hi! Constant              " . g:bgNone        . g:fgOrangeL      . g:none
exe "hi! Noise                 " . g:bgNone        . g:fgCyanLr       . g:none
exe "hi! Number                " . g:bgNone        . g:fgOrangeDr     . g:none
exe "hi! String                " . g:bgNone        . g:fgLightGreenL  . g:none
exe "hi! Special               " . g:bgNone        . g:fgCyanL        . g:none
exe "hi! Boolean               " . g:bgNone        . g:fgRedL         . g:none
exe "hi! Comment               " . g:bgNone        . g:fgGreyD        . g:none
exe "hi! Error                 " . g:bgNone        . g:fgRedL         . g:none
exe "hi! Keyword               " . g:bgNone        . g:fgDeepPurpleLr . g:none
exe "hi! PreProc               " . g:bgNone        . g:fgDeepPurpleLr . g:none
exe "hi! Identifier            " . g:bgNone        . g:fgLightBlueLr  . g:none
exe "hi! Include               " . g:bgNone        . g:fgDeepPurpleLr . g:none
exe "hi! Operator              " . g:bgNone        . g:fgCyanLr       . g:none
exe "hi! Todo                  " . g:bgNone        . g:fgOrangeD      . g:none
hi link Character            Operator
hi link Conditional          Statement
hi link Structure            Statement
hi link Exception            Statement
hi link Repeat               Statement
hi link MatchParen           Search
exe "hi! Underlined            " . g:bgNone        . g:fgLightBlueD   . g:underline
exe "hi! Label                 " . s:debugStyle
exe "hi! SpecialChar           " . g:bgNone        . g:fgLightBlueD
"exe "hi! Function              " . g:bgNone   . g:fgRedL    . g:none
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
hi link NERDTreeBookmarkName Underlined
exe "hi! NERDTreeBookmarksHeader    " . g:bgShadeLr      . g:fgShadeL  . g:bold
exe "hi! NERDTreeCWD                " . g:fgLightBlueLr  . g:bold
exe "hi! NERDTreeClosable           " . g:fgShadeLr
exe "hi! NERDTreeDir                " . g:fgCyanL        . g:bold
exe "hi! NERDTreeDirSlash           " . g:fgCyanD
exe "hi! NERDTreeExecFile           " . g:fgOrangeL
exe "hi! NERDTreeFlags              " . g:fgInvert
exe "hi! NERDTreeGitStatusDirClean  " . g:fgLightGreenLr
exe "hi! NERDTreeGitStatusDirDirty  " . g:fgOrangeL
exe "hi! NERDTreeGitStatusModified  " . g:fgLightBlueLr
exe "hi! NERDTreeGitStatusRenamed   " . g:fgRedL
exe "hi! NERDTreeGitStatusStaged    " . g:fgLightGreenL
exe "hi! NERDTreeGitStatusUnmerged  " . g:fgShadeLr
exe "hi! NERDTreeGitStatusUntracked " . g:fgLightGreenD
exe "hi! NERDTreeHelp               " . g:fgShadeLr
exe "hi! NERDTreeHelpKey            " . g:fgGreyLr
exe "hi! NERDTreeOpenable           " . g:fgShadeLr
exe "hi! NERDTreeToggleOff          " . g:fgRedL
