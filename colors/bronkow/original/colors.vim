" colors#buildToneDict('E16054', '124')
" @returns { 'cterm': '124 ', 'hex': '#E16054 ', 'group': [124, 0xE16054] }
fun! colors#buildToneDict(hexStr, rgbInt)
  return {
    \'cterm': a:rgbInt.' ',
    \'hex'  : '#'.a:hexStr.' ',
    \'group': [
      \str2nr(a:rgbInt, 10),
      \str2nr(a:hexStr, 16)
    \]
  \}
endfun

let g:colors = {
  \'red': {
    \'dark'    : colors#buildToneDict('574250', ' 95'),
    \'default' : colors#buildToneDict('EB5368', '167')
  \},
  \'orange': {
    \'dark'    : colors#buildToneDict('B85E2F', '130'),
    \'default' : colors#buildToneDict('D96629', '166'),
    \'light'   : colors#buildToneDict('D99B28', '178')
  \},
  \'green': {
    \'default' : colors#buildToneDict('10C66F', ' 77'),
    \'light'   : colors#buildToneDict('00FF7F', ' 77')
  \},
  \'blue': {
    \'dark'    : colors#buildToneDict('475983', '234'),
    \'default' : colors#buildToneDict('5675B9', ' 24'),
    \'light'   : colors#buildToneDict('4399C4', ' 38'),
    \'lighter' : colors#buildToneDict('B9D7FD', ' 38'),
  \},
  \'purple': {
    \'default' : colors#buildToneDict('BD73DB', '171'),
    \'light'   : colors#buildToneDict('BCB8D6', ' 38')
  \},
  \'shade': {
    \'darkest' : colors#buildToneDict('181D20', '233'),
    \'darker'  : colors#buildToneDict('272B35', '234'),
    \'dark'    : colors#buildToneDict('393F4C', '235'),
    \'default' : colors#buildToneDict('454D5D', '236'),
    \'light'   : colors#buildToneDict('6D7782', '237'),
    \'lighter' : colors#buildToneDict('8FA1B2', '247'),
    \'lightest': colors#buildToneDict('A9BACB', '250')
  \},
  \'black': {
    \'default' : colors#buildToneDict('000000', '  0')
  \},
  \'grey': {
    \'darker'  : colors#buildToneDict('797B81', '243'),
    \'dark'    : colors#buildToneDict('888888', '243'),
    \'default' : colors#buildToneDict('B0B0B0', '243'),
    \'light'   : colors#buildToneDict('CBCCCE', '244'),
    \'lighter' : colors#buildToneDict('E9F4FE', '244')
  \},
  \'white': {
    \'default' : colors#buildToneDict('F5F7F0', '254')
  \}
\}
fun! colors#capitalize(string)
  let first = toupper(a:string[0])
  let rest = a:string[1:-1]
  return first.''.rest
endfun

let s:toneMapping = {
  \'darkest':  'Dst',
  \'darker':   'Dr',
  \'dark':     'D',
  \'default':  '',
  \'light':    'L',
  \'lighter':  'Lr',
  \'lightest': 'Lst'
\}

" #############################################################################
let g:colors#PowerlineMapping = {}
for colorKey in keys(g:colors)
  let colorDict = g:colors[colorKey]
  let g:colors[colorKey].fg = {}
  let g:colors[colorKey].bg = {}
  for toneKey in keys(colorDict)
    let toneDict = colorDict[toneKey]
    if !(toneKey == 'fg' || toneKey == 'bg')
      let name = colors#capitalize(colorKey)
      let label = s:toneMapping[toneKey]
      " vim
      let g:['fg'.name.label] = "guifg=". toneDict.hex ."ctermfg=". toneDict.cterm
      let g:['bg'.name.label] = "guibg=". toneDict.hex ."ctermbg=". toneDict.cterm
      " powerline
      let g:colors#PowerlineMapping[colorKey.label] = toneDict.group
    endif
  endfor
endfor
" #############################################################################
let g:spRed     = "guisp=".g:colors.red.dark.hex
let g:spOrangeD = "guisp=".g:colors.orange.dark.hex
let g:spOrange  = "guisp=".g:colors.orange.default.hex
let g:spOrangeL = "guisp=".g:colors.orange.light.hex
