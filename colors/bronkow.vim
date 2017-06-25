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
" ==============================================================================

" Global Settings: {{{

if version > 580
  hi clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let colors_name='bronkow'

if !has('gui_running') && &t_Co != 256
  finish
endif

let s:is_dark = (&background == 'dark')

command! BronkowLight let s:is_dark = 0 | call bronkow#style#update(s:is_dark) | colorscheme bronkow
command! BronkowDark  let s:is_dark = 1 | call bronkow#style#update(s:is_dark) | colorscheme bronkow

" }}}
" Initialisation: {{{

call bronkow#theme#init(g:bronkow#colors, s:is_dark)

" }}}
