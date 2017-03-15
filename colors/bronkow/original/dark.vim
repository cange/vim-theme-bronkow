" Check key colors with
" :so $VIMRUNTIME/syntax/hitest.vim
let g:Powerline_colorscheme = 'bronkowDark'

ru colors/bronkow/formats.vim
ru colors/bronkow/original/colors.vim

" ============================== define cursor ================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                       = "\<Esc>]12;".g:colors.white.default.hex . "\x7"
  let &t_EI                       = "\<Esc>]12;".g:colors.green.default.hex . "\x7"
  silent                    !echo -ne "\033]12;".g:colors.grey.light.hex    . "\007"
  autocmd VimLeave * silent !echo -ne    "\033]".g:colors.grey.light.hex    . "\007"
endif
"
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . g:bgShadeDr     . g:fgShadeL
exe "hi! PmenuSel      " . g:bgShadeDst    . g:fgShadeLst
exe "hi! PMenuSbar     " . g:bgBlue
exe "hi! PMenuThumb    " . g:bgBlueD
" -- vertical separator line --
exe "hi! ColorColumn   " . g:bgShade       . g:fgNone       . g:none
exe "hi! CursorLineNr  " . g:bgShade       . g:fgShadeLr    . g:bold
exe "hi! FoldColumn    " . g:bgRed         . g:fgOrange     . g:none
exe "hi! Folded        " . g:bgShade       . g:fgOrangeL    . g:none
exe "hi! LineNr        " . g:bgShadeD      . g:fgShadeL     . g:none
exe "hi! VertSplit     " . g:bgNone        . g:fgShadeDr    . g:none
" -- Status bars --
exe "hi! StatusLine    " . g:bgShadeDr     . g:fgShadeLr    . g:none
exe "hi! StatusLineNC  " . g:bgShadeDr     . g:fgNone       . g:none
exe "hi! WildMenu      " . g:bgBlueD       . g:fgShadeLst   . g:none
exe "hi! TabLine       " . g:bgShadeLst    . g:fgShadeDr    . g:none
exe "hi! TabLineFill   " . g:bgShadeLst    . g:fgGrey       . g:none
exe "hi! TabLineSel    " . g:bgBlueL       . g:fgShadeLst   . g:none
" -- Spelling --
exe "hi! SpellBad      " . g:bgNone        . g:fgNone       . g:undercurl . g:spRed
exe "hi! SpellCap      " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
exe "hi! SpellRare     " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeL
exe "hi! SpellLocal    " . g:bgNone        . g:fgNone       . g:undercurl . g:spOrangeD
" -- Diff --
exe "hi! DiffAdd       " . g:bgNone . g:fgGreenD . g:none
exe "hi! DiffChange    " . g:bgNone . g:fgBlueL  . g:none
exe "hi! DiffDelete    " . g:bgNone . g:fgRed    . g:none
exe "hi! DiffText      " . g:bgNone . g:fgOrange . g:none
" -- UI – Git --
exe "hi! GitGutterAdd          " . g:bgNone      . g:fgGreenD  . g:none
exe "hi! GitGutterChange       " . g:bgNone      . g:fgOrangeL . g:none
exe "hi! GitGutterDelete       " . g:bgNone      . g:fgRed     . g:none
exe "hi! GitGutterChangeDelete " . g:bgNone      . g:fgRed     . g:none
" -- Misc --
exe "hi! Directory             " . g:bgNone      . g:fgShadeLr . g:none
exe "hi! SignColumn            " . g:bgShadeD    . g:fgShadeLr . g:none
exe "hi! MoreMsg               " . g:bgNone      . g:fgBlueL   . g:none
exe "hi! ModeMsg               " . g:bgNone                    . g:none
exe "hi! ErrorMsg              " . g:bgRedD      . g:fgOrangeL . g:none
exe "hi! WarningMsg            "                 . g:fgOrangeL . g:none
exe "hi! Question              " . g:bgNone      . g:fgGreenD  . g:none
" -- Text Selection --
exe "hi! CursorColumn          " . g:bgRed       . g:fgNone    . g:none
exe "hi! CursorLine            " . g:bgShade     . g:fgNone    . g:bold
" -- Cursors --
exe "hi! Cursor                " . g:bgGreyLr                  . g:none
exe "hi! iCursor               " . g:bgGreenD                  . g:none
exe "hi! vCursor               " . g:bgOrangeL   . g:fgBlack
exe "hi! rCursor               " . g:bgWhite                   . g:none
" -- Selections --
exe "hi! Visual                " . g:bgBlueLr    . g:fgBlack   . g:none
exe "hi! Search                " . g:bgGrey      . g:fgShadeDr . g:none
exe "hi! IncSearch             " . g:bgGreen     . g:fgBlack   . g:none
" -- NERDTree --
 exe "hi! NERDTreeBookmark        " . g:fgShadeL
 exe "hi! NERDTreeBookmarkName    " . g:fgBlueL
 exe "hi! NERDTreeBookmarksHeader " . g:fgGreenD
 exe "hi! NERDTreeCWD             " . g:fgGreenD
 exe "hi! NERDTreeClosable        " . g:fgShadeLr
 exe "hi! NERDTreeDir             " . g:fgShadeLst
 exe "hi! NERDTreeDirSlash        " . g:fgShadeL
 exe "hi! NERDTreeExecFile        " . g:fgOrange
 exe "hi! NERDTreeFile            " . g:fgShadeL
 exe "hi! NERDTreeHelp            " . g:fgShadeLr
 exe "hi! NERDTreeHelpKey         " . g:fgGreyLr
 exe "hi! NERDTreeOpenable        " . g:fgShadeL
 exe "hi! NERDTreeToggleOff       " . g:fgRed
" == TMRU ==
exe "hi! InputlListCursor "        . g:bgBlueD . g:bold
exe "hi! InputlListSelected "      . g:bgGreenD
" == Text Markup ==
"exe "hi! Underlined    " . g:bgInherit     . g:fgInherit    . g:underline
" -- Invisible character colors --
exe "hi! NonText       " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! SpecialKey    " . g:bgNone        . g:fgShadeD     . g:none
exe "hi! Title         " . g:bgNone        . g:fgOrangeD    . g:none
"
" == Syntax ==
"
exe "hi! Boolean       " . g:fgRed
exe "hi! Character     " . g:fgShadeLst
exe "hi! Comment       " . g:fgGreyDr
exe "hi! Conditional   " . g:fgGreen                  . g:none
exe "hi! Constant      " . g:fgShadeLst
exe "hi! Error         " . g:fgOrangeL   . g:bgRedD
exe "hi! Exception     " . g:fgGreenD
exe "hi! Function      " . g:fgGreyLr
exe "hi! Identifier    " . g:fgGreenD
exe "hi! Include       " . g:fgGreen                  . g:none
exe "hi! Keyword       " . g:fgGreenD
exe "hi! Label         " . g:fgShadeL
exe "hi! MatchParen    " . g:fgBlueD     . g:bgGreen  . g:bold
exe "hi! Noise         " . g:fgShadeLst
exe "hi! Normal        " . g:fgPurpleL   . g:bgShadeD
exe "hi! Number        " . g:fgRed
exe "hi! Operator      " . g:fgShadeLst
exe "hi! PreProc       " . g:fgGreyL
exe "hi! Repeat        " . g:fgGreen                  . g:none
exe "hi! Special       " . g:fgGreen                  . g:none
exe "hi! SpecialChar   " . g:fgShadeLr
exe "hi! Statement     " . g:fgGreen                  . g:none
exe "hi! StorageClass  " . g:fgGreen                  . g:none
exe "hi! String        " . g:fgGreyLr
exe "hi! Structure     " . g:fgGreen                  . g:none
exe "hi! Todo          " . g:fgOrangeL
exe "hi! Type          " . g:fgPurpleL
"
" == Syntax ==
" SCSS
exe "hi! scssSelectorChar " . g:fgGreenD
exe "hi! scssSelectorName " . g:fgGreen
" CSS
exe "hi! cssImportant     " . g:fgOrangeL
exe "hi! cssPseudoClassId " . g:fgOrange
" JavaScript
exe "hi! jsClassFuncName  " . g:fgGreyLr
exe "hi! jsFuncArgs       " . g:fgGreyLr
" Slim template engine
exe "hi! slimClass        " . g:fgGreyL

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_javascript_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cssClassName     Type
  HiLink cssClassNameDot  Type
  HiLink cssProp          Type
  HiLink cssIdentifier    Type
  HiLink cssMedia         Type
  HiLink cssMediaKeyword  Type
  HiLink scssMixin        Type

  delcommand HiLink
endif
