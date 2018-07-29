" :so $VIMRUNTIME/syntax/hitest.vim
fun! bronkow#theme#init(colors, is_dark)
  call bronkow#formats#setup()
  if get(g:, 'bronkow_style_loaded', 0) == 0
    call bronkow#style#update(a:is_dark)
  endif
  call s:mapping(a:colors)
  call s:init_extentions(a:colors)
endfun

fun! s:init_extentions(colors)
  call bronkow#extensions#airline#init(a:colors)
  call bronkow#extensions#gitgutter#init(a:colors)
  call bronkow#extensions#nerdtree#init(a:colors)
  call bronkow#extensions#nerdtree_git_plugin#init(a:colors)
endfun

fun! s:mapping(colors)
  let h = bronkow#helper#new(a:colors)

  " in order of hitest output
  "
  " Highlighting groups for various occasions
  " -----------------------------------------
  call h.hilight('SpecialKey',   'shade3')
  call h.hilight('NonText',      'shade1')
  call h.hilight('Directory',    'grey2')
  call h.hilight('ErrorMsg',     'shade4', 'red2')
  call h.hilight('IncSearch',    'orange2', 'shade2')
  call h.hilight('Search',       'shade2', 'orange2')
  call h.hilight('MoreMsg',      'blue2')
  call h.hilight('LineNr',       'shade1', 'shade3')
  call h.hilight('CursorLineNr', 'shade1', 'shade4')
  call h.hilight('Question',     'green3')
  call h.hilight('StatusLine',   'shade1', 'shade4')
  call h.hilight('StatusLineNC', 'shade1')
  call h.hilight('VertSplit',    'shade4', 'shade4')
  call h.hilight('Title',        0, 0, 'bold')
  call h.hilight('Visual',       0, 'shade1')
  call h.hilight('VisualNOS',    0, 'shade1')
  call h.hilight('WarningMsg',   'orange2')
  call h.hilight('WildMenu',     'shade1', 'blue3')
  call h.hilight('Fold',         'grey2', 'shade3')
  call h.hilight('Folded',       'grey3', 'shade3', 'italic')
  call h.hilight('FoldColumn',   'red1', 'shade3')
  call h.hilight('SignColumn',   'orange1', 'blue1')
  call h.hilight('DiffAdd',      0, 'green4')
  call h.hilight('DiffChange',   'shade1', 'blue4')
  call h.hilight('DiffDelete',   'red2', 0)
  call h.hilight('DiffText',     'shade1', 'red1')
  exe 'hi! SpellBad              ' . g:undercurl . g:sp_red
  exe 'hi! SpellCap              ' . g:undercurl . g:sp_orange_dark
  exe 'hi! SpellRare             ' . g:undercurl . g:sp_orange_light
  exe 'hi! SpellLocal            ' . g:undercurl . g:sp_orange_light
  call h.hilight('PMenu',        'blue1', 'shade3')
  call h.hilight('PMenuSel',     'grey1', 'shade4')
  call h.hilight('PMenuSbar',    0, 'shade1')
  call h.hilight('PMenuThumb',   0, 'shade3')
  call h.hilight('TabLine',      'shade1', 'shade4')
  call h.hilight('TabLineFill',  'shade2', 'shade1')
  call h.hilight('TabLineSel',   'shade1', 'blue2')
  call h.hilight('CursorColumn', 0, 'shade3')
  call h.hilight('CursorLine',   0, 'shade3', 'bold')
  call h.hilight('ColorColumn',  0, 'shade3')
  call h.hilight('Cursor',       0, 'grey1')
  "
  " Syntax highlighting groups
  " --------------------------
  hi link MatchParen             Search
  call h.hilight('Normal',       'grey2', 'shade2')
  call h.hilight('Error',        'grey2', 'red2')
  call h.hilight('Constant',     'orange2')
  call h.hilight('Special',      'cyan2')
  call h.hilight('Identifier',   'blue1')
  call h.hilight('Statement',    'purple1')
  call h.hilight('PreProc',      'purple1')
  call h.hilight('Type',         'purple1')
  call h.hilight('Underlined',   'blue3', 0, 'underline')
  call h.hilight('Todo',         'orange3', 'shade2')
  call h.hilight('String',       'green2')
  call h.hilight('Number',       'orange4')
  call h.hilight('Boolean',      'orange4')
  call h.hilight('Boolean',      'red1')
  call h.hilight('Conditional',  'purple1')
  call h.hilight('Repeat',       'purple1')
  call h.hilight('Label',        'purple1')
  call h.hilight('Operator',     'cyan1')
  call h.hilight('Keyword',      'purple1')
  call h.hilight('Exception',    'purple1')
  call h.hilight('Include',      'purple1')
  call h.hilight('StorageClass', 'purple1')
  call h.hilight('Structure',    'purple1')
  call h.hilight('SpecialChar',  'blue3')
  " TODO sort all items below in hitest order
  " -- UI – Git --
  " -- Misc --
  call h.hilight('SignColumn',   'shade1', 'shade3')
  " -- Cursors --
  call h.hilight('rCursor',      'red1', 'grey1')
  call h.hilight('iCursor',      0, 'cyan2')
  call h.hilight('vCursor',      'shade4', 'orange2')
  " == Syntax ==
  call h.hilight('Noise',        'cyan1')
  call h.hilight('Comment',      'grey3')
  "===
  call h.hilight('Character',    'cyan1')
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
  " -- vim-illuminate --
  call h.hilight('illuminatedWord', 0, 'grey4')
endfun
