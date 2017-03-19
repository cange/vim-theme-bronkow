function! s:capitalize(string)
  let first = toupper(a:string[0])
  let tail = a:string[1:-1]
  return first.tail
endfunction

let s:toneMapping = {
      \'lightest': 'Lst',
      \'lighter':  'Lr',
      \'light':    'L',
      \'medium':   '',
      \'dark':     'D',
      \'darker':   'Dr',
      \'darkest':  'Dst',
      \}

function! bronkow#converters#translate(colors)
  for colorKey in keys(a:colors)
    let colorDict = a:colors[colorKey]
    let a:colors[colorKey].fg = {}
    let a:colors[colorKey].bg = {}

    for toneKey in keys(colorDict)
      let toneDict = colorDict[toneKey]

      if !(toneKey == 'fg' || toneKey == 'bg')
        let name = s:capitalize(colorKey)
        let label = s:toneMapping[toneKey]
        let g:['fg'.name.label] = ' guifg='. toneDict.gui .' ctermfg='. toneDict.cterm
        let g:['bg'.name.label] = ' guibg='. toneDict.gui .' ctermbg='. toneDict.cterm
      endif
    endfor
  endfor

  let g:spRed     = 'guisp=' . a:colors.red.dark.gui
  let g:spOrangeD = 'guisp=' . a:colors.orange.darker.gui
  let g:spOrangeL = 'guisp=' . a:colors.orange.light.gui
endfunction
