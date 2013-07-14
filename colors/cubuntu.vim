" Maintainer: Christian Angermann
" Version: 1.0.4

" Cubuntu Colorscheme for Vim
"
" Summary:
" Color scheme with dark and light versions (GUI and 256 color terminal).

" Description:
" The color scheme is dark, by default. You can change this by setting the
" g:cubuntu_style variable to "light" or "dark". Once the color scheme is
" loaded, you can use the commands "CubuntuLight" or "CubuntuDark" to change
" schemes quickly.
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
"     ln -s colors/cubuntu.vim ~/.vim/colors/
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
command! CubuntuLight let g:cubuntu_style = "light" | colorscheme cubuntu
command! CubuntuDark  let g:cubuntu_style = "dark"  | colorscheme cubuntu

" #############################################################################
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name="cubuntu"

set background=dark

ru /colors/colors.vim
if exists("g:cubuntu_style")
  if g:cubuntu_style == "light"
    set background=light
  endif
else
  let g:cubuntu_style="dark"
endif

if g:cubuntu_style == "dark"
  ru colors/dark.vim
else
  ru colors/light.vim
endif

" #############################################################################
" cursor shapes and behaviours
set guicursor =n-c:block-Cursor
set guicursor+=n-c:blinkon0
set guicursor+=r-cr:hor10-rCursor/block-lCursor
set guicursor+=i-ci:ver10-iCursor/lCursor-blinkwait150
set guicursor+=v:block-vCursor/lCursor-blinkon0
" ############################# POWERLINE THEMES ##############################
let g:Powerline_theme       = 'cange'
let g:Powerline_symbols     = 'fancy'
