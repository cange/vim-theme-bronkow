let g:bgNone              = "guibg = NONE                 ctermbg = NONE "
let g:fgNone              = "guifg = NONE                 ctermfg = NONE "
let g:bgInherit           = "guibg = BG                   ctermbg = BG   "
let g:fgInherit           = "guifg = FG                   ctermfg = FG   "
let g:bgInvert            = "guibg = FG                   ctermbg = FG   "
let g:fgInvert            = "guifg = BG                   ctermfg = BG   "
let g:bold                = "gui   = BOLD                   cterm = BOLD   "
let g:italic              = "gui   = ITALIC                 cterm = ITALIC "
let g:italicBold          = "gui   = ITALIC,BOLD            cterm = ITALIC,BOLD "
let g:none                = "gui   = NONE                   cterm = NONE   "
let g:underline           = "gui   = UNDERLINE              cterm = UNDERLINE "
let g:underlineBold       = "gui   = UNDERLINE,BOLD         cterm = UNDERLINE,BOLD "
let g:underlineBoldItalic = "gui   = UNDERLINE,BOLD,ITALIC  cterm = UNDERLINE,BOLD,ITALIC "
let g:undercurl           = "gui   = UNDERCURL              cterm = UNDERCURL "
" general styles
exe "hi! htmlBold "                . g:bold
exe "hi! htmlItalic "              . g:italic
exe "hi! htmlItalicBold "          . g:italicBold
exe "hi! htmlUnderline "           . g:underline
exe "hi! htmlUnderlineBold "       . g:underlineBold
exe "hi! htmlUnderlineBoldItalic " . g:underlineBoldItalic
