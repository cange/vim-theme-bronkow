fun! bronkow#ui#map_generator()
  let s:debugStyle  = g:bgRed2    . g:fgOrange2 . g:underlineBoldItalic
  let s:debugStyleI = g:bgOrange2 . g:fgRed2    . g:italic

  " in order of hitest output
  "
  " Highlighting groups for various occasions
  " -----------------------------------------
  exe 'hi! SpecialKey            ' . g:bgNone        . g:fgShade3      . g:none
  exe 'hi! NonText               ' . g:bgNone        . g:fgShade3      . g:none
  exe 'hi! Directory             ' . g:bgNone        . g:fgGrey2       . g:none
  exe 'hi! ErrorMsg              ' . g:bgRed2        . g:fgShade1      . g:none
  " -- Selections --
  exe 'hi! IncSearch             ' . g:bgGreen2      . g:fgShade3      . g:none
  exe 'hi! Search                ' . g:bgShade1      . g:fgGreen2      . g:none
  " --
  exe 'hi! MoreMsg               ' . g:bgNone        . g:fgBlue2       . g:none
  exe 'hi! ModeMsg               ' . g:bgNone                          . g:none
  " -- UI --
  exe 'hi! LineNr                ' . g:bgShade3      . g:fgShade1      . g:none
  exe 'hi! CursorLineNr          ' . g:bgShade4      . g:fgShade1      . g:bold
  " --
  exe 'hi! Question              ' . g:bgNone        . g:fgGreen3      . g:none
  " -- UI --
  exe 'hi! StatusLine            ' . g:bgShade4      . g:fgShade1      . g:none
  exe 'hi! StatusLineNC          ' . g:bgShade4      . g:fgNone        . g:none
  exe 'hi! VertSplit             ' . g:bgShade4      . g:fgShade4      . g:none
  " --
  exe 'hi! Title                 ' . g:bgNone        . g:fgNone        . g:bold
  " -- Selections --
  exe 'hi! Visual                ' . g:bgShade1      . g:fgNone        . g:none
  exe 'hi! VisualNOS             ' . g:bgShade1      . g:fgNone        . g:none
  " --
  exe 'hi! WarningMsg            '                   . g:fgOrange2     . g:none
  exe 'hi! WildMenu              ' . g:bgBlue3       . g:fgShade1      . g:none
  " -- horizontal line --
  exe 'hi! Folded                ' . g:bgShade3      . g:fgOrange2     . g:none
  exe 'hi! FoldColumn            ' . s:debugStyle
  " -- Diff --
  exe 'hi! DiffAdd               ' . g:bgNone        . g:fgGreen3      . g:none
  exe 'hi! DiffChange            ' . g:bgNone        . g:fgBlue2       . g:none
  exe 'hi! DiffDelete            ' . g:bgNone        . g:fgRed1        . g:none
  exe 'hi! DiffText              ' . g:bgNone        . g:fgOrange2     . g:none
  " --
  exe 'hi! SignColumn            ' . s:debugStyle
  " -- Spelling --
  exe 'hi! SpellBad              ' . g:bgNone        . g:fgNone        . g:undercurl . g:spRed
  exe 'hi! SpellCap              ' . g:bgNone        . g:fgNone        . g:undercurl . g:spOrangeD
  exe 'hi! SpellRare             ' . g:bgNone        . g:fgNone        . g:undercurl . g:spOrangeL
  exe 'hi! SpellLocal            ' . g:bgNone        . g:fgNone        . g:undercurl . g:spOrangeD
  " -- autocompletion dropdown --
  exe 'hi! PMenu                 ' . g:bgShade3      . g:fgBlue1
  exe 'hi! PmenuSel              ' . g:bgShade4      . g:fgGrey1       . g:bold
  exe 'hi! PMenuSbar             ' . g:bgShade
  exe 'hi! PMenuThumb            ' . g:bgShade3
  " -- Status bars --
  exe 'hi! TabLine               ' . g:bgShade4      . g:fgShade1      . g:none
  exe 'hi! TabLineFill           ' . g:bgShade1      . g:fgShade2      . g:none
  exe 'hi! TabLineSel            ' . g:bgBlue2       . g:fgShade1      . g:none
  " -- Text Selection --
  exe 'hi! CursorColumn          ' . g:bgRed1        . g:fgNone        . g:none
  exe 'hi! CursorLine            ' . g:bgShade3      . g:fgNone        . g:bold
  exe 'hi! ColorColumn           ' . g:bgShade3      . g:fgNone        . g:none
  exe 'hi! Cursor                ' . g:bgGrey1                         . g:none
  "
  " Syntax highlighting groups
  " --------------------------
  hi link MatchParen             Search
  exe 'hi! Normal                ' . g:bgShade2      . g:fgGrey2       . g:none
  exe 'hi! Error                 ' . g:bgNone        . g:fgRed1        . g:none
  exe 'hi! Constant              ' . g:bgNone        . g:fgOrange2     . g:none
  exe 'hi! Special               ' . g:bgNone        . g:fgCyan2       . g:none
  exe 'hi! Identifier            ' . g:bgNone        . g:fgBlue1       . g:none
  exe 'hi! Statement             ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! PreProc               ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! Type                  ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! Underlined            ' . g:bgNone        . g:fgBlue3       . g:underline
  exe 'hi! Todo                  ' . g:bgNone        . g:fgOrange3     . g:none
  exe 'hi! String                ' . g:bgNone        . g:fgGreen2      . g:none
  exe 'hi! Number                ' . g:bgNone        . g:fgOrange4     . g:none
  exe 'hi! Boolean               ' . g:bgNone        . g:fgRed1        . g:none
  exe 'hi! Conditional           ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! Repeat                ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! Label                 ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! Operator              ' . g:bgNone        . g:fgCyan1       . g:none
  exe 'hi! Keyword               ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! Exception             ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! Include               ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! StorageClass          ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! Structure             ' . g:bgNone        . g:fgPurple1     . g:none
  exe 'hi! SpecialChar           ' . g:bgNone        . g:fgBlueD
  " TODO sort all items below in hitest order
  " -- UI – Git --
  exe 'hi! GitGutterAdd          ' . g:bgShade3      . g:fgGreen3      . g:none
  exe 'hi! GitGutterChange       ' . g:bgShade3      . g:fgOrange2     . g:none
  exe 'hi! GitGutterDelete       ' . g:bgShade3      . g:fgRed2        . g:none
  exe 'hi! GitGutterChangeDelete ' . g:bgShade3      . g:fgRed1        . g:none
  " -- Misc --
  exe 'hi! SignColumn            ' . g:bgShade3      . g:fgShade1      . g:none
  " -- Cursors --
  exe 'hi! rCursor               ' . g:bgGrey1       . g:fgRed1        . g:none
  exe 'hi! iCursor               ' . g:bgGreen3                        . g:none
  exe 'hi! vCursor               ' . g:bgOrange2     . g:fgBlack
  "
  " == Syntax ==
  exe 'hi! Noise                 ' . g:bgNone        . g:fgCyan1       . g:none
  exe 'hi! Comment               ' . g:bgNone        . g:fgGrey3       . g:none
  "
  "
  "===
  hi link Character              Operator
  "exe 'hi! Function              ' . g:bgNone   . g:fgRed1     . g:none
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
  exe 'hi! NERDTreeBookmark           ' . g:fgShade1
  exe 'hi! NERDTreeLinkFile           ' . g:fgShade1
  hi link NERDTreeBookmarkName Underlined
  exe 'hi! NERDTreeBookmarksHeader    ' . g:bgShade1     . g:fgShade2  . g:bold
  exe 'hi! NERDTreeCWD                ' . g:fgBlue1      . g:bold
  exe 'hi! NERDTreeClosable           ' . g:fgShade
  exe 'hi! NERDTreeDir                ' . g:fgCyan2      . g:bold
  exe 'hi! NERDTreeDirSlash           ' . g:fgCyanD
  exe 'hi! NERDTreeExecFile           ' . g:fgOrangeL
  exe 'hi! NERDTreeFlags              ' . g:fgInvert
  exe 'hi! NERDTreeGitStatusDirClean  ' . g:fgGreen1
  exe 'hi! NERDTreeGitStatusDirDirty  ' . g:fgOrangeL
  exe 'hi! NERDTreeGitStatusModified  ' . g:fgBlue1
  exe 'hi! NERDTreeGitStatusRenamed   ' . g:fgRed1
  exe 'hi! NERDTreeGitStatusStaged    ' . g:fgGreenL
  exe 'hi! NERDTreeGitStatusUnmerged  ' . g:fgShade
  exe 'hi! NERDTreeGitStatusUntracked ' . g:fgGreenD
  exe 'hi! NERDTreeHelp               ' . g:fgShade
  exe 'hi! NERDTreeHelpKey            ' . g:fgGrey1
  exe 'hi! NERDTreeOpenable           ' . g:fgShade
  exe 'hi! NERDTreeToggleOff          ' . g:fgRed1
endfun
