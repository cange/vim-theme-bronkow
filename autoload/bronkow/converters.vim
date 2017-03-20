fun! s:capitalize(string)
  let first = toupper(a:string[0])
  let tail = a:string[1:-1]
  return first.tail
endfun

fun! s:set_color_variables(name, gui, cterm)
  let g:['fg'.a:name] = ' guifg='. a:gui .' ctermfg='. a:cterm
  let g:['bg'.a:name] = ' guibg='. a:gui .' ctermbg='. a:cterm
endfun

let s:toneMapping = {
      \'lightest': 'Lst',
      \'lighter':  'Lr',
      \'light':    'L',
      \'medium':   '',
      \'dark':     'D',
      \'darker':   'Dr',
      \'darkest':  'Dst',
      \}

fun! bronkow#converters#translate(colors)
  for colorKey in keys(a:colors)
    let color = a:colors[colorKey]

    for toneKey in keys(color)
      if !(toneKey == 'fg' || toneKey == 'bg')
        let tone = color[toneKey]
        let name = s:capitalize(colorKey) . '' . s:toneMapping[toneKey]

        call s:set_color_variables(name, tone.gui, tone.cterm)
      endif
    endfor
  endfor

  let g:spRed     = 'guisp=' . a:colors.red.dark.gui
  let g:spOrangeD = 'guisp=' . a:colors.orange.darker.gui
  let g:spOrangeL = 'guisp=' . a:colors.orange.light.gui
endfun

fun! bronkow#converters#setup_shades(mode, color)
  if (a:mode == 'dark')
    call s:set_color_variables('ShadeLr', a:color.medium.gui,  a:color.medium.cterm)
    call s:set_color_variables('ShadeL',  a:color.dark.gui,    a:color.dark.cterm)
    call s:set_color_variables('ShadeD',  a:color.darker.gui,  a:color.darker.cterm)
    call s:set_color_variables('ShadeDr', a:color.darkest.gui, a:color.darkest.cterm)
  else
    call s:set_color_variables('ShadeLr', a:color.lightest.gui,a:color.lightest.cterm)
    call s:set_color_variables('ShadeL',  a:color.lighter.gui, a:color.lighter.cterm)
    call s:set_color_variables('ShadeD',  a:color.light.gui,   a:color.light.cterm)
    call s:set_color_variables('ShadeDr', a:color.medium.gui,  a:color.medium.cterm)
  endif
endfun
