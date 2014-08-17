" Maintainer: Christian Angermann
" Version: 1.1.0

" Bronkow Colorscheme for Vim
"
" Summary:
" Color scheme with dark and light versions (GUI and 256 color terminal).

" Description:
" The color scheme is dark, by default. You can change this by setting the
" g:bronkow_style variable to "light" or "dark". Once the color scheme is
" loaded, you can use the commands "BronkowLight" or "BronkowDark",
" to change schemes quickly.
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
"     git clone git://github.com/cange/vim-theme-bronkow.git
"     cd vim-theme-bronkow/
"
" and create a simlink to your Vim directory
"
"     ln -s colors/bronkow/bronkow.vim ~/.vim/colors/
"
" and then put this line in your `.vimrc` file
"
"     colorscheme bronkow
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
command! BronkowLight    let g:bronkow_style = "original_light"    | colorscheme bronkow
command! BronkowDark     let g:bronkow_style = "original_dark"     | colorscheme bronkow

" #############################################################################
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name="bronkow"

set background=light

" set default theme
if !exists("g:bronkow_style")
  let g:bronkow_style="original_light"
endif

ru colors/bronkow/formats.vim
" FIXME try to load file dynamically
" let style_type = split(g:bronkow_style, '_')
" let directory = style_type[0]
" let tone      = style_type[1]

" set background=s:tone
" ru colors/bronkow/${directory}/colors.vim
" ru colors/bronkow/${directory}/${tone}.vim

ru colors/bronkow/formats.vim
ru colors/bronkow/original/colors.vim
if g:bronkow_style == "original_dark"
  set background=dark
  ru colors/bronkow/original/dark.vim
elseif g:bronkow_style == "original_light"
  set background=light
  ru colors/bronkow/original/light.vim
endif

" #############################################################################
" cursor shapes and behaviours
set guicursor =n-c:block-Cursor
set guicursor+=n-c:blinkon0
set guicursor+=r-cr:hor10-rCursor/block-lCursor
set guicursor+=i-ci:ver10-iCursor/lCursor-blinkwait150
set guicursor+=v:block-vCursor/lCursor-blinkon0

" ############################# POWERLINE THEMES ##############################
let g:Powerline_theme   = 'bronkow'
let g:Powerline_symbols = 'fancy'
" on the fly theme reload
if exists('g:Powerline_loaded')
  call Pl#ClearCache()
  call Pl#ReloadColorscheme()
endif
