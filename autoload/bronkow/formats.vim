function! s:cursor_setup()
  set guicursor =n-c:block-Cursor
  set guicursor+=n-c:blinkon0
  set guicursor+=r-cr:hor10-rCursor/block-lCursor
  set guicursor+=i-ci:ver10-iCursor/lCursor-blinkwait150
  set guicursor+=v:block-vCursor/lCursor-blinkon0
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
endfunction

function! bronkow#formats#setup()
  call s:general_formats()
  call s:general_styles()
  call s:cursor_setup()
endfunction
