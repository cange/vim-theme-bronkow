" Maintainer: Christian Angermann
" Version: 2.0.0

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
" * #{color}    = medium
" * #{color}L   = light
" * #{color}Lr  = lighter
" * #{color}Lst = lightest

" == Commands ==
command! BronkowLight let g:bronkow_style = 'light' | ru autoload/bronkow/theme.vim | colorscheme bronkow
command! BronkowDark  let g:bronkow_style = 'dark'  | ru autoload/bronkow/theme.vim | colorscheme bronkow
" ==============================================================================
hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name='bronkow'

"set default theme
if !exists('g:bronkow_style')
  let g:bronkow_style = 'dark'
endif

if g:bronkow_style == 'dark'
  set background=dark
elseif g:bronkow_style == 'light'
  set background=light
endif

"let g:bronkow_debug = 1

if get(g:, 'bronkow_debug', 0) == 1
  ru autoload/bronkow/theme.vim
endif

call bronkow#theme#init(g:bronkow#colors)
