" Check key colors with
" :so $VIMRUNTIME/syntax/hitest.vim

call bronkow#formats#setup()
call bronkow#converters#translate(g:bronkow#colors)
call bronkow#converters#setup_shades(g:bronkow_style, g:bronkow#colors.shade)

let s:debugStyle = g:bgRedD . g:fgOrangeL . g:underlineBoldItalic

" in order of hitest output
"
" Highlighting groups for various occasions
" -----------------------------------------
exe 'hi! SpecialKey            ' . g:bgNone        . g:fgShadeD        . g:none
exe 'hi! NonText               ' . g:bgNone        . g:fgShadeD        . g:none
exe 'hi! Directory             ' . g:bgNone        . g:fgGreyL         . g:none
exe 'hi! ErrorMsg              ' . g:bgRedD        . g:fgShadeLr       . g:none
" -- Selections --
exe 'hi! IncSearch             ' . g:bgGreenL      . g:fgShadeD        . g:none
exe 'hi! Search                ' . g:bgShadeLr     . g:fgGreenL        . g:none
" --
exe 'hi! MoreMsg               ' . g:bgNone        . g:fgBlueL         . g:none
exe 'hi! ModeMsg               ' . g:bgNone                            . g:none
" -- UI --
exe 'hi! LineNr                ' . g:bgShadeD      . g:fgShadeLr       . g:none
exe 'hi! CursorLineNr          ' . g:bgShadeDr     . g:fgShadeLr       . g:bold
" --
exe 'hi! Question              ' . g:bgNone        . g:fgGreenD        . g:none
" -- UI --
exe 'hi! StatusLine            ' . g:bgShadeDr     . g:fgShadeLr       . g:none
exe 'hi! StatusLineNC          ' . g:bgShadeDr     . g:fgNone          . g:none
exe 'hi! VertSplit             ' . g:bgShadeDr     . g:fgShadeDr       . g:none
" --
exe 'hi! Title                 ' . g:bgNone        . g:fgNone          . g:bold
" -- Selections --
exe 'hi! Visual                ' . g:bgShadeLr     . g:fgNone          . g:none
exe 'hi! VisualNOS             ' . g:bgShadeLr     . g:fgNone          . g:none
" --
exe 'hi! WarningMsg            '                   . g:fgOrangeL       . g:none
exe 'hi! WildMenu              ' . g:bgBlueD       . g:fgShadeLr       . g:none
" -- horizontal line --
exe 'hi! Folded                ' . g:bgShadeD      . g:fgOrangeL       . g:none
exe 'hi! FoldColumn            ' . s:debugStyle
" -- Diff --
exe 'hi! DiffAdd               ' . g:bgNone        . g:fgGreenD        . g:none
exe 'hi! DiffChange            ' . g:bgNone        . g:fgBlueL         . g:none
exe 'hi! DiffDelete            ' . g:bgNone        . g:fgRedL          . g:none
exe 'hi! DiffText              ' . g:bgNone        . g:fgOrangeL       . g:none
" --
exe 'hi! SignColumn            ' . s:debugStyle
" -- Spelling --
exe 'hi! SpellBad              ' . g:bgNone        . g:fgNone          . g:undercurl . g:spRed
exe 'hi! SpellCap              ' . g:bgNone        . g:fgNone          . g:undercurl . g:spOrangeD
exe 'hi! SpellRare             ' . g:bgNone        . g:fgNone          . g:undercurl . g:spOrangeL
exe 'hi! SpellLocal            ' . g:bgNone        . g:fgNone          . g:undercurl . g:spOrangeD
" -- autocompletion dropdown --
exe 'hi! PMenu                 ' . g:bgShadeD      . g:fgBlueLr
exe 'hi! PmenuSel              ' . g:bgShadeDr     . g:fgGreyLr        . g:bold
exe 'hi! PMenuSbar             ' . g:bgShade
exe 'hi! PMenuThumb            ' . g:bgShadeD
" -- Status bars --
exe 'hi! TabLine               ' . g:bgShadeDr     . g:fgShadeLr       . g:none
exe 'hi! TabLineFill           ' . g:bgShadeLr     . g:fgShadeL        . g:none
exe 'hi! TabLineSel            ' . g:bgBlueL       . g:fgShadeLr       . g:none
" -- Text Selection --
exe 'hi! CursorColumn          ' . g:bgRedL        . g:fgNone          . g:none
exe 'hi! CursorLine            ' . g:bgShadeD      . g:fgNone          . g:bold
exe 'hi! ColorColumn           ' . g:bgShadeD      . g:fgNone          . g:none
exe 'hi! Cursor                ' . g:bgGreyLr                          . g:none
"
" Syntax highlighting groups
" --------------------------
hi link MatchParen             Search
exe 'hi! Normal                ' . g:bgShadeL      . g:fgGreyLr        . g:none
exe 'hi! Error                 ' . g:bgNone        . g:fgRedL          . g:none
exe 'hi! Constant              ' . g:bgNone        . g:fgOrangeL       . g:none
exe 'hi! Special               ' . g:bgNone        . g:fgCyanL         . g:none
exe 'hi! Identifier            ' . g:bgNone        . g:fgBlueLr        . g:none
exe 'hi! Statement             ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! PreProc               ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! Type                  ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! Underlined            ' . g:bgNone        . g:fgBlueD         . g:underline
exe 'hi! Todo                  ' . g:bgNone        . g:fgOrangeD       . g:none
exe 'hi! String                ' . g:bgNone        . g:fgGreenL        . g:none
exe 'hi! Number                ' . g:bgNone        . g:fgOrangeDr      . g:none
exe 'hi! Boolean               ' . g:bgNone        . g:fgRedL          . g:none
exe 'hi! Conditional           ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! Repeat                ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! Label                 ' . s:debugStyle
exe 'hi! Operator              ' . g:bgNone        . g:fgCyanLr        . g:none
exe 'hi! Keyword               ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! Exception             ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! Include               ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! StorageClass          ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! Structure             ' . g:bgNone        . g:fgPurpleLr      . g:none
exe 'hi! SpecialChar           ' . g:bgNone        . g:fgBlueD
" TODO sort all items below in hitest order
" -- UI – Git --
exe 'hi! GitGutterAdd          ' . g:bgShadeD      . g:fgGreenD        . g:none
exe 'hi! GitGutterChange       ' . g:bgShadeD      . g:fgOrangeL       . g:none
exe 'hi! GitGutterDelete       ' . g:bgShadeD      . g:fgRedD          . g:none
exe 'hi! GitGutterChangeDelete ' . g:bgShadeD      . g:fgRedL          . g:none
" -- Misc --
exe 'hi! SignColumn            ' . g:bgShadeD      . g:fgShadeLr        . g:none
" -- Cursors --
exe 'hi! rCursor               ' . g:bgGreyLr      . g:fgRedL          . g:none
exe 'hi! iCursor               ' . g:bgGreenD                          . g:none
exe 'hi! vCursor               ' . g:bgOrangeL     . g:fgBlack
"
" == Syntax ==
exe 'hi! Noise                 ' . g:bgNone        . g:fgCyanLr        . g:none
exe 'hi! Comment               ' . g:bgNone        . g:fgGreyD         . g:none
"
"
"===
hi link Character              Operator
"exe 'hi! Function              ' . g:bgNone   . g:fgRedL    . g:none
" -- CSS/SASS exceptions --
hi link cssClassNameDot        Operator
hi link cssProp                Special
hi link cssTagName             Normal
hi link scssSelectorName       Constant
hi link scssVariable           Normal
" -- HTML exceptions --
hi link htmlArg                Constant
hi link htmlTagName            Boolean
hi link jsxAttrib              Constant
hi link jsxTag                 Identifier
hi link jsxTagName             Boolean
hi link slimClass              Constant
hi link slimClassChar          Operator
hi link slimText               Special
" -- JavaScript --
hi link jsClassDefinition      Constant
hi link jsDestructuringBlock   String
hi link jsObjectProp           Identifier
hi link jsThis                 Constant

" === Plugins ===
" -- NERDTree --
exe 'hi! NERDTreeBookmark           ' . g:fgShadeLr
exe 'hi! NERDTreeLinkFile           ' . g:fgShadeLr
hi link NERDTreeBookmarkName Underlined
exe 'hi! NERDTreeBookmarksHeader    ' . g:bgShadeLr      . g:fgShadeL  . g:bold
exe 'hi! NERDTreeCWD                ' . g:fgBlueLr       . g:bold
exe 'hi! NERDTreeClosable           ' . g:fgShade
exe 'hi! NERDTreeDir                ' . g:fgCyanL        . g:bold
exe 'hi! NERDTreeDirSlash           ' . g:fgCyanD
exe 'hi! NERDTreeExecFile           ' . g:fgOrangeL
exe 'hi! NERDTreeFlags              ' . g:fgInvert
exe 'hi! NERDTreeGitStatusDirClean  ' . g:fgGreenLr
exe 'hi! NERDTreeGitStatusDirDirty  ' . g:fgOrangeL
exe 'hi! NERDTreeGitStatusModified  ' . g:fgBlueLr
exe 'hi! NERDTreeGitStatusRenamed   ' . g:fgRedL
exe 'hi! NERDTreeGitStatusStaged    ' . g:fgGreenL
exe 'hi! NERDTreeGitStatusUnmerged  ' . g:fgShade
exe 'hi! NERDTreeGitStatusUntracked ' . g:fgGreenD
exe 'hi! NERDTreeHelp               ' . g:fgShade
exe 'hi! NERDTreeHelpKey            ' . g:fgGreyLr
exe 'hi! NERDTreeOpenable           ' . g:fgShade
exe 'hi! NERDTreeToggleOff          ' . g:fgRedL
