" Maintainer: Christian Angermann
" Version: 1.1.0

" Bronkow Colorscheme for Vim
"
" Summary:
" Color scheme with dark and light versions (GUI and 256 color terminal).

" Description:
" The color scheme is dark, by default. You can change this by setting the
" g:bronkow_style variable to "light" or "dark". Once the color scheme is
" loaded, you can use the commands "BronkowMaterialLight" or "BronkowMaterialDark",
" to change schemes quickly.
"
" colorsupport.vim (vimscript #2682) is used to help with mapping the GUI
" settings to the 256 terminal colors.
"
" All main colors have color-4 levels, which are differentiated by a suffix.
"
" * #color#Dr  = darker
" * #color#D   = dark
" * #color#L   = light
" * #color#Lr  = lighter
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
"     ln -s colors/material.vim ~/.vim/colors/
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
"command! BronkowMaterialLight let g:bronkow_style = "material_light" | colorscheme bronkow_material
command! BronkowMaterialDark let g:bronkow_style = "material_dark" | colorscheme bronkow_material
" == status line  ==
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme = "bronkow_material_dark"
" ==============================================================================
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name="bronkow_material"

set background=dark

" set default theme
if !exists("g:bronkow_style")
  let g:bronkow_style="material_dark"
endif

" FIXME try to load file dynamically
" let style_type = split(g:bronkow_style, '_')
" let directory = style_type[0]
" let tone      = style_type[1]

" set background=s:tone
" ru colors/bronkow/${directory}/colors.vim
" ru colors/bronkow/${directory}/${tone}.vim

if g:bronkow_style == "material_dark"
  set background=dark
  ru colors/bronkow/material/dark.vim
" elseif g:bronkow_style == "material_light"
"   set background=light
"   ru colors/bronkow/material/light.vim
endif

" === Cursor shapes and behaviours =============================================
set guicursor =n-c:block-Cursor
set guicursor+=n-c:blinkon0
set guicursor+=r-cr:hor10-rCursor/block-lCursor
set guicursor+=i-ci:ver10-iCursor/lCursor-blinkwait150
set guicursor+=v:block-vCursor/lCursor-blinkon0

