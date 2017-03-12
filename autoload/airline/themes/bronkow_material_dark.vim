scriptencoding utf-8

" Each theme is contained in its own file and declares variables scoped to the
" file.  These variables represent the possible "modes" that airline can
" detect.  The mode is the return value of mode(), which gets converted to a
" readable string.  The following is a list currently supported modes: normal,
" insert, replace, visual, and inactive.
"
" Each mode can also have overrides.  These are small changes to the mode that
" don't require a completely different look.  "modified" and "paste" are two
" such supported overrides.  These are simply suffixed to the major mode,
" separated by an underscore.  For example, "normal_modified" would be normal
" mode where the current buffer is modified.
"
" The theming algorithm is a 2-pass system where the mode will draw over all
" parts of the statusline, and then the override is applied after.  This means
" it is possible to specify a subset of the theme in overrides, as it will
" simply overwrite the previous colors.  If you want simultaneous overrides,
" then they will need to change different parts of the statusline so they do
" not conflict with each other.
"
" First, let's define an empty dictionary and assign it to the "palette"
" variable. The # is a separator that maps with the directory structure. If
" you get this wrong, Vim will complain loudly.
ru colors/bronkow/material/colors.vim

function! C(fgName, fgTone, bgName, bgTone, ...)
  let tones = { 'dr': 'darker', 'd': 'dark', 'l': 'light', 'lr': 'lighter', 'm': 'medium' }
  let fgTone = tones[a:fgTone]
  let bgTone = tones[a:bgTone]

  let fg = g:colors[a:fgName][fgTone]
  let bg = g:colors[a:bgName][bgTone]
  let guifg = fg.hex
  let guibg = bg.hex
  let ctermfg = fg.cterm
  let ctermbg = bg.cterm

  let opts = a:0 > 0 ? a:1 : 'NONE'
  "echo 'fg: '. a:fgName . ' -bg: '. a:bgName . ' -args: '. a:0 . ' -opts: '. opts

  return [ guifg, guibg, ctermfg, ctermbg, opts ]
endfunction

let g:airline#themes#bronkow_material_dark#palette = {}

" First let's define some arrays. The s: is just a VimL thing for scoping the
" variables to the current script. Without this, these variables would be
" declared globally. Now let's declare some colors for normal mode and add it
" to the dictionary.  The array is in the format:
" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
" values for the "opt" value.
let s:normal1 = C('shade', 'lr', 'shade', 'dr')
let s:normal2 = C('shade', 'd', 'shade', 'lr')
let s:normal3 = C('grey', 'l', 'shade', 'd')
let s:normal_color_map = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
let s:normal_modified = { 'airline_c': C('orange', 'l', 'shade', 'd') }

let g:airline#themes#bronkow_material_dark#palette.normal = copy(s:normal_color_map)

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#bronkow_material_dark#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#bronkow_material_dark#palette.normal_modified = s:normal_modified

let g:airline#themes#bronkow_material_dark#palette.insert = copy(s:normal_color_map)
let g:airline#themes#bronkow_material_dark#palette.insert.airline_a = C('shade', 'd', 'cyan', 'd')
let g:airline#themes#bronkow_material_dark#palette.insert_modified = s:normal_modified
let g:airline#themes#bronkow_material_dark#palette.insert_paste = { 'airline_c': C('cyan', 'd', 'shade', 'lr') }

let g:airline#themes#bronkow_material_dark#palette.replace = copy(s:normal_color_map)
let g:airline#themes#bronkow_material_dark#palette.replace.airline_a = C('shade', 'd', 'red', 'd')
let g:airline#themes#bronkow_material_dark#palette.replace_modified = s:normal_modified

let g:airline#themes#bronkow_material_dark#palette.visual = copy(s:normal_color_map)
let g:airline#themes#bronkow_material_dark#palette.visual.airline_a = C('shade', 'd', 'orange', 'l')
let g:airline#themes#bronkow_material_dark#palette.visual_modified = s:normal_modified

let s:inactive1 = C('shade', 'dr', 'shade', 'dr')
let s:inactive2 = C('shade', 'd', 'shade', 'd')
let s:inactive3 = C('grey', 'd', 'shade', 'dr')
let s:inactive_modified = C('red', 'd', 'shade', 'dr')
let g:airline#themes#bronkow_material_dark#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
let g:airline#themes#bronkow_material_dark#palette.inactive_modified = s:normal_modified

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#bronkow_material_dark#palette.accents = { 'red': C('red', 'd', 'shade', 'dr') }

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#bronkow_material_dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  \ C('cyan',   'dr', 'shade', 'dr'),
  \ C('orange', 'lr', 'cyan', 'dr'),
  \ C('cyan',   'dr', 'orange', 'l', 'bold')
  \)

" order of section
let g:airline_section_a = airline#section#create(['branch'])
