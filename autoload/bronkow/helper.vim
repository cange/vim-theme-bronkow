" vim: et ts=2 sts=2 sw=2

scriptencoding utf-8

fun! s:log(msg, ...)
  if get(g:, 'bronkow_debug', 0) == 1
    echo a:0 > 0 ? '– ' .a:msg.' – '.a:1 : a:msg
  endif
endfun

fun! s:set_tone(name, tone)
  let g:['fg_'.a:name] = 'guifg='. a:tone.gui .' ctermfg='. a:tone.cterm
  let g:['bg_'.a:name] = 'guibg='. a:tone.gui .' ctermbg='. a:tone.cterm
endfun

fun! s:color_translate(colors)
  for color_key in keys(a:colors)
    let color = a:colors[color_key]

    for tone_key in keys(color)
      if !(tone_key == 'fg' || tone_key == 'bg')
        let tone = color[tone_key]
        let name = color_key . '_' . tone_key

        call s:set_tone(name, tone)
      endif
    endfor
  endfor

  let g:sp_red         = 'guisp=' . a:colors.red.dark.gui
  let g:sp_orange_dark = 'guisp=' . a:colors.orange.darker.gui
  let g:sp_orange_light= 'guisp=' . a:colors.orange.light.gui
endfun

fun! s:color_map(fg, bg, opts)
  let fg = a:fg == 'none' ? '' : g:['fg_'.a:fg]
  let bg = a:bg == 'none' ? '' : g:['bg_'.a:bg]
  let opts = a:opts == 'none' ? '' : g:[a:opts]

  call s:log('color_map', fg . ' '. bg .' '. opts)
  return fg .' '. bg .' '. opts
endfun
"
" public
"
let s:prototype = {}
" arguments, helper: group_name, fg, bg, opts
" example: call helper_instance.hilight_group('title', 'blue4', 'shade1', 'bold')
fun! s:prototype.hilight(name, ...) dict
  let fg = a:0 > 0 ? a:1 : 0
  let bg = a:0 > 1 ? a:2 : 'none'
  let opts = a:0 > 2 ? a:3 : 'none'
  let color_map = s:color_map(fg, bg, opts)
  let hilight = 'hi! '.a:name.'		'.color_map

  call s:log('hilight', hilight)
  exe hilight
endfun

" TODO set up airline styles for light and dark
" Arguments: fg, bg, opts
" Example: call helper_instance.airline_set('title', 'blue4', 'shade1', 'bold')
" Returns: attr-list: [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list"
fun! s:prototype.airline_set(fg, bg, ...) dict
  let fg_name = a:fg
  let bg_name = a:bg
  " let fg = s:set_tone[fg_name]
  " let bg = s:set_tone[bg_name]
  "
  " let opts = a:0 > 0 ? a:1 : 'NONE'
  "
  " return [ fg.gui, bg.gui, fg.cterm, bg.cterm, opts ]
endfun

fun! bronkow#helper#new(colors)
  let s:prototype.tones = {}
  let s:prototype.colors = {}
  let helper = copy(s:prototype)
  call s:color_translate(a:colors)

  return helper
endfun

" static
fun! bronkow#helper#set_tone(name, tone)
  call s:set_tone(a:name, a:tone)
endfun

