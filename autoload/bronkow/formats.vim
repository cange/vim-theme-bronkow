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

  " if &term =~ "xterm\\|rxvt"
  "   " use an orange cursor in insert mode
  "   let &t_SI =    '\<Esc>]12;' . insertColor . '\x7'
  "   " use a red cursor otherwise
  "   let &t_EI =    '\<Esc>]12;' . normalColor  . '\x7'
  "   silent !echo -ne '\033]12;' . normalColor  . '\007'
  "   " reset cursor when vim exits
  "   autocmd VimLeave * silent !echo -ne '\033]' . resetColor  . '\007'
  "   " use \003]12;gray\007 for gnome-terminal
  " endif
endfunction

function! s:general_formats()
  let g:bgNone              = " guibg = NONE ctermbg = NONE "
  let g:fgNone              = " guifg = NONE ctermfg = NONE "
  let g:bgInherit           = " guibg = BG ctermbg = BG "
  let g:fgInherit           = " guifg = FG ctermfg = FG "
  let g:bgInvert            = " guibg = FG ctermbg = FG "
  let g:fgInvert            = " guifg = BG ctermfg = BG "
  let g:bold                = " gui = BOLD         cterm = BOLD "
  let g:italic              = " gui = ITALIC       cterm = ITALIC "
  let g:italicBold          = " gui = ITALIC,BOLD  cterm = ITALIC,BOLD "
  let g:none                = " gui = NONE         cterm = NONE "
  let g:underline           = " gui = UNDERLINE              cterm = UNDERLINE "
  let g:underlineBold       = " gui = UNDERLINE,BOLD         cterm = UNDERLINE,BOLD "
  let g:underlineBoldItalic = " gui = UNDERLINE,BOLD,ITALIC  cterm = UNDERLINE,BOLD,ITALIC "
  let g:undercurl           = " gui = UNDERCURL              cterm = UNDERCURL "
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
