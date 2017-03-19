" Maintainer: Christian Angermann
" Version: 1.1.0

" Bronkow Colorscheme for Vim
"
" Summary:
" Color scheme with dark and light versions (GUI and 256 color terminal).

" Description:
" The color scheme is dark, by default. You can change this by setting the
" g:bronkow_style variable to 'light' or 'dark'. Once the color scheme is
" loaded, you can use the commands 'BronkowLight' or 'BronkowDark',
" to change schemes quickly.
"
" colorsupport.vim (vimscript #2682) is used to help with mapping the GUI
" settings to the 256 terminal colors.
"
" Colors are differentiated by a suffix term
" * main colors can be up to 4 level of colors
" * shade colors have 7 level
"
" * #{color}Dst = darkest
" * #{color}Dr  = darker
" * #{color}D   = dark
" * #{color}m   = medium
" * #{color}L   = light
" * #{color}Lr  = lighter
" * #{color}Lst = lightest
"
" == Vimwiki Colors ==
hi link VimwikiHeader1 BConstant
hi link VimwikiHeader2 BIdentifier
hi link VimwikiHeader3 BStatement
hi link VimwikiHeader4 BSpecial
hi link VimwikiHeader5 BPreProc
hi link VimwikiHeader6 BType

" == Tagbar Colors ==
hi link TagbarAccessPublic Constant
hi link TagbarAccessProtected Type
hi link TagbarAccessPrivate PreProc

" == Commands ==
"command! BronkowLight let g:bronkow_style = 'light' | colorscheme bronkow
command! BronkowDark let g:bronkow_style = 'dark' | colorscheme bronkow
" ==============================================================================
hi clear
if exists('syntax_on')
  syntax reset
endif

let colors_name='bronkow'

" set default theme
if !exists('g:bronkow_style')
  let g:bronkow_style='dark'
endif

if g:bronkow_style == 'dark'
  set background=dark
  let g:airline_theme = 'bronkow_dark'
  ru colors/bronkow/dark.vim
" elseif g:bronkow_style == 'light'
"   set background=light
"   ru colors/bronkow/material/light.vim
endif


" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
  \ 'Modified'  : '±',
  \ 'Staged'    : '✓',
  \ 'Untracked' : '✪',
  \ 'Renamed'   : '➲',
  \ 'Unmerged'  : '≈',
  \ 'Deleted'   : '×',
  \ 'Dirty'     : '⬌',
  \ 'Clean'     : '',
  \ 'Ignored'   : '☒',
  \ 'Unknown'   : '⍰'
  \ }

