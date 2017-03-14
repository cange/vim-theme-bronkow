function! Converters#capitalize(string)
  let first = toupper(a:string[0])
  let rest = a:string[1:-1]
  return first.rest
endfunction

let s:toneMapping = {
      \"darker":   "Dr",
      \"dark":     "D",
      \"medium":   "",
      \"light":    "L",
      \"lighter":  "Lr",
      \}

function! Converters#translate(colors)
  for colorKey in keys(g:colors)
    let colorDict = g:colors[colorKey]
    let g:colors[colorKey].fg = {}
    let g:colors[colorKey].bg = {}


    for toneKey in keys(colorDict)
      let toneDict = colorDict[toneKey]

      if !(toneKey == "fg" || toneKey == "bg")
        let name = Converters#capitalize(colorKey)
        let label = s:toneMapping[toneKey]
        let g:["fg".name.label] = " guifg=". toneDict.gui ." ctermfg=". toneDict.cterm
        let g:["bg".name.label] = " guibg=". toneDict.gui ." ctermbg=". toneDict.cterm
      endif

    endfor
  endfor

  let g:spRed     = "guisp=".g:colors.Red.dark.gui
  let g:spOrangeD = "guisp=".g:colors.Orange.darker.gui
  let g:spOrangeL = "guisp=".g:colors.Orange.light.gui
endfunction
