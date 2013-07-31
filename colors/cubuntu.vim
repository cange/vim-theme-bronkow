" Maintainer: Christian Angermann
" Version: 1.0.6

" Cubuntu Colorscheme for Vim
"
" Summary:
" Color scheme with dark and light versions (GUI and 256 color terminal).

" Description:
" The color scheme is dark, by default. You can change this by setting the
" g:cubuntu_style variable to "light" or "dark". Once the color scheme is
" loaded, you can use the commands "CubuntuAltLight" or "CubuntuAltDark" to
" change schemes quickly.
"
" colorsupport.vim (vimscript #2682) is used to help with mapping the GUI
" settings to the 256 terminal colors.
"
" All main colors have color-5 levels, which are differentiated by a suffix.
"
" * #color#Dr  = darker
" * #color#D   = dark
" * #color#    = base color has no suffix
" * #color#L   = light
" * #color#Lr  = lighter
"
" The grey tone have also two additional tones
"
" * #color#Dst = darkest
" * #color#Lst = lightest
"
" Installation:
"
" Clone the repository:
"
"     git clone git://github.com/cange/vim-theme-cubuntu.git
"     cd vim-theme-cubuntu/
"
" and create a simlink to your Vim directory
"
"     ln -s colors/cubuntu/cubuntu.vim ~/.vim/colors/
"
" and then put this line in your `.vimrc` file
"
"     colorscheme cubuntu
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
command! CubuntuAltLight let g:cubuntu_style = "alt_light" | colorscheme cubuntu
command! CubuntuAltDark  let g:cubuntu_style = "alt_dark"  | colorscheme cubuntu

" #############################################################################
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name="cubuntu"

set background=dark

ru /colors/cubuntu/alternative/colors.vim
if exists("g:cubuntu_style")
  if g:cubuntu_style == "alt_light"
    set background=light
  elseif  g:cubuntu_style == "alt_dark"
    set background=dark
    let g:cubuntu_style="alt_dark"
  endif
else
  set background=dark
  let g:cubuntu_style="alt_dark"
endif

if g:cubuntu_style == "alt_dark"
  let g:Powerline_colorscheme = 'cubuntuAltDark'
  ru colors/cubuntu/alternative/dark.vim
elseif g:cubuntu_style == "alt_light"
  let g:Powerline_colorscheme = 'cubuntuAltLight'
  ru colors/cubuntu/alternative/light.vim
endif

" #############################################################################
" cursor shapes and behaviours
set guicursor =n-c:block-Cursor
set guicursor+=n-c:blinkon0
set guicursor+=r-cr:hor10-rCursor/block-lCursor
set guicursor+=i-ci:ver10-iCursor/lCursor-blinkwait150
set guicursor+=v:block-vCursor/lCursor-blinkon0

" ############################# POWERLINE THEMES ##############################
let g:Powerline_theme   = 'cubuntu'
let g:Powerline_symbols = 'fancy'
" on the fly theme reload
if exists('g:Powerline_loaded')
  call Pl#ClearCache()
  call Pl#ReloadColorscheme()
endif
