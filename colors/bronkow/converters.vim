function! converters#capitalize(string)
  let first = toupper(a:string[0])
  let rest = a:string[1:-1]
  return first.''.rest
endfunction

let s:toneMapping = {
      \'darkest':  'Dst',
      \'darker':   'Dr',
      \'dark':     'D',
      \'medium':   '',
      \'light':    'L',
      \'lighter':  'Lr',
      \'lightest': 'Lst'
      \}


let g:helpers#PowerlineMapping = {}

function! Converters#translate(colors)
  for colorKey in keys(g:colors)
    let colorDict = g:colors[colorKey]
    let g:colors[colorKey].fg = {}
    let g:colors[colorKey].bg = {}

    for toneKey in keys(colorDict)
      let toneDict = colorDict[toneKey]

      if !(toneKey == 'fg' || toneKey == 'bg')
        let name = converters#capitalize(colorKey)
        let label = s:toneMapping[toneKey]
        " vim
        let g:['fg'.name.label] = " guifg=". toneDict.hex ." ctermfg=". toneDict.cterm
        let g:['bg'.name.label] = " guibg=". toneDict.hex ." ctermbg=". toneDict.cterm
        " powerline
        let g:helpers#PowerlineMapping[colorKey.label] = toneDict.group
      endif

    endfor
  endfor

  let g:spRed     = "guisp=".g:colors.red.dark.hex
  let g:spOrangeD = "guisp=".g:colors.orange.darker.hex
  let g:spOrange  = "guisp=".g:colors.orange.dark.hex
  let g:spOrangeL = "guisp=".g:colors.orange.light.hex
endfunction
