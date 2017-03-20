fun! s:capitalize(string)
  let first = toupper(a:string[0])
  let tail = a:string[1:-1]
  return first.tail
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

fun! bronkow#converters#tone_var(name, tone)
  let g:['fg'.a:name] = ' guifg='. a:tone.gui .' ctermfg='. a:tone.cterm
  let g:['bg'.a:name] = ' guibg='. a:tone.gui .' ctermbg='. a:tone.cterm
endfun

fun! bronkow#converters#translate(colors)
  for colorKey in keys(a:colors)
    let color = a:colors[colorKey]

    for toneKey in keys(color)
      if !(toneKey == 'fg' || toneKey == 'bg')
        let tone = color[toneKey]
        let name = s:capitalize(colorKey) . '' . s:toneMapping[toneKey]

        call bronkow#converters#tone_var(name, tone)
      endif
    endfor
  endfor

  let g:spRed     = 'guisp=' . a:colors.red.dark.gui
  let g:spOrangeD = 'guisp=' . a:colors.orange.darker.gui
  let g:spOrangeL = 'guisp=' . a:colors.orange.light.gui
endfun
