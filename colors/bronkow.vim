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
" * #{color}    = medium
" * #{color}L   = light
" * #{color}Lr  = lighter
" * #{color}Lst = lightest

" == Commands ==
command! BronkowLight let g:bronkow_style = 'light' | colorscheme bronkow
command! BronkowDark  let g:bronkow_style = 'dark'  | colorscheme bronkow
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
elseif g:bronkow_style == 'light'
  set background=light
endif

" Check key colors with
" :so $VIMRUNTIME/syntax/hitest.vim
call bronkow#formats#setup()
call bronkow#converters#translate(g:bronkow#colors)
call bronkow#tones#map_generator(g:bronkow#colors, g:bronkow_style)
call bronkow#ui#map_generator()
