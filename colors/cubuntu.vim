" Maintainer: Christian Angermann
" Version: 1.0.8

" Cubuntu Colorscheme for Vim
"
" Summary:
" Color scheme with dark and light versions (GUI and 256 color terminal).

" Description:
" The color scheme is dark, by default. You can change this by setting the
" g:cubuntu_style variable to "light" or "dark". Once the color scheme is
" loaded, you can use the commands "CubuntuLight", "CubuntuDark",
" "CubuntuLightAlt" or "CubuntuDarkAlt" to change schemes quickly.
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
command! CubuntuDarkAlt  let g:cubuntu_style = "alternative_dark"  | colorscheme cubuntu
command! CubuntuLightAlt let g:cubuntu_style = "alternative_light" | colorscheme cubuntu
command! CubuntuLight    let g:cubuntu_style = "original_light"    | colorscheme cubuntu
command! CubuntuDark     let g:cubuntu_style = "original_dark"     | colorscheme cubuntu

" #############################################################################
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name="cubuntu"

set background=dark

" set default theme
if !exists("g:cubuntu_style")
  let g:cubuntu_style="original_dark"
endif

ru colors/cubuntu/formats.vim

" let s:style_type = split(g:cubuntu_style, '_')
" let s:directory = s:style_type[0]
" let s:tone      = s:style_type[1]

" set background=s:tone
" ru "colors/cubuntu/".s:directory."/colors.vim"
" ru colors/cubuntu/${s:directory}/dark.vim

if g:cubuntu_style == "alternative_dark"
  set background=dark
  ru colors/cubuntu/alternative/colors.vim
  ru colors/cubuntu/alternative/dark.vim
elseif g:cubuntu_style == "alternative_light"
  set background=light
  ru colors/cubuntu/alternative/colors.vim
  ru colors/cubuntu/alternative/light.vim
elseif g:cubuntu_style == "original_dark"
  set background=dark
  ru colors/cubuntu/original/colors.vim
  ru colors/cubuntu/original/dark.vim
elseif g:cubuntu_style == "original_light"
  set background=light
  ru colors/cubuntu/original/colors.vim
  ru colors/cubuntu/original/light.vim
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
