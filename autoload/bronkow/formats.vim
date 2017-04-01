function! s:cursor_behaviours()
  set guicursor =n-c:block-Cursor
  set guicursor+=n-c:blinkon0
  set guicursor+=r-cr:hor10-rCursor/block-lCursor
  set guicursor+=i-ci:ver20-iCursor/lCursor-blinkwait150
  set guicursor+=v:block-vCursor/lCursor-blinkon0
endfunction

function! s:cursor_modes()
  let insertColor = g:bronkow#colors.cyan.light.gui
  let normalColor = g:bronkow#colors.green.light.gui
  let resetColor  = g:bronkow#colors.grey.light.gui
endfunction

function! s:general_formats()
  let g:bg_none             = "guibg=none	ctermbg=none "
  let g:fg_none             = "guifg=none	ctermfg=none "
  let g:bg_inherit          = "guibg=bg	ctermbg=bg "
  let g:fg_inherit          = "guifg=fg	ctermfg=fg "
  let g:bg_invert           = "guibg=fg	ctermbg=fg "
  let g:fg_invert           = "guifg=BG	ctermfg=BG "
  let g:bold                = "gui=BOLD	cterm=BOLD "
  let g:italic              = "gui=ITALIC	cterm=ITALIC "
  let g:italicBold          = "gui=ITALIC,BOLD	cterm=ITALIC,BOLD "
  let g:none                = "gui=NONE	cterm=NONE "
  let g:underline           = "gui=UNDERLINE	cterm=UNDERLINE "
  let g:underlineBold       = "gui=UNDERLINE,BOLD	cterm=UNDERLINE,BOLD "
  let g:underlineBoldItalic = "gui=UNDERLINE,BOLD,ITALIC	cterm=UNDERLINE,BOLD,ITALIC "
  let g:undercurl           = "gui=UNDERCURL	cterm=UNDERCURL "
endfunction

function! s:general_styles()
  exe 'hi! htmlBold                ' . g:bold
  exe 'hi! htmlItalic              ' . g:italic
  exe 'hi! htmlItalicBold          ' . g:italicBold
  exe 'hi! htmlUnderline           ' . g:underline
  exe 'hi! htmlUnderlineBold       ' . g:underlineBold
  exe 'hi! htmlUnderlineBoldItalic ' . g:underlineBoldItalic
  " == Vimwiki Colors ==
  hi link VimwikiHeader1 BConstant
  hi link VimwikiHeader2 BIdentifier
  hi link VimwikiHeader3 BStatement
  hi link VimwikiHeader4 BSpecial
  hi link VimwikiHeader5 BPreProc
  hi link VimwikiHeader6 BType

  " == Tagbar Colors ==
  hi link TagbarAccessPublic    Constant
  hi link TagbarAccessProtected Type
  hi link TagbarAccessPrivate   PreProc
endfunction

function! bronkow#formats#setup()
  call s:general_formats()
  call s:general_styles()
  call s:cursor_behaviours()
  call s:cursor_modes()
endfunction
