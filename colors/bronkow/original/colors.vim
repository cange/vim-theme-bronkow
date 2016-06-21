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
    \'darker'  : colors#buildToneDict('382127', ' 52'),
    \'dark'    : colors#buildToneDict('813844', ' 95'),
    \'default' : colors#buildToneDict('EB5055', '167'),
    \'light'   : colors#buildToneDict('EB5368', '168')
  \},
  \'orange': {
    \'dark'    : colors#buildToneDict('9E4E24', '130'),
    \'default' : colors#buildToneDict('D96629', '166'),
    \'light'   : colors#buildToneDict('D99B28', '178')
  \},
  \'green': {
    \'default' : colors#buildToneDict('70BF53', ' 77')
  \},
  \'blue': {
    \'dark'    : colors#buildToneDict('132637', '234'),
    \'default' : colors#buildToneDict('1D4F73', ' 24'),
    \'light'   : colors#buildToneDict('46AFE3', ' 38')
  \},
  \'purple': {
    \'dark'    : colors#buildToneDict('A260B1', '133'),
    \'default' : colors#buildToneDict('DF80FF', '171')
  \},
  \'shade': {
    \'darkest' : colors#buildToneDict('14171A', '233'),
    \'darker'  : colors#buildToneDict('181D20', '234'),
    \'dark'    : colors#buildToneDict('2D333C', '235'),
    \'default' : colors#buildToneDict('343C45', '236'),
    \'light'   : colors#buildToneDict('5F7381', '237'),
    \'lighter' : colors#buildToneDict('8FA1B2', '247'),
    \'lightest': colors#buildToneDict('A9BACB', '250')
  \},
  \'black': {
    \'default' : colors#buildToneDict('000000', '  0')
  \},
  \'grey': {
    \'default' : colors#buildToneDict('757873', '243'),
    \'light'   : colors#buildToneDict('888888', '244')
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
