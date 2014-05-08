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
    \'darker'  : colors#buildToneDict('D93829', ' 55'),
    \'dark'    : colors#buildToneDict('E16054', '124'),
    \'default' : colors#buildToneDict('EEA59E', '160'),
    \'light'   : colors#buildToneDict('F4C4Bf', '196'),
    \'lighter' : colors#buildToneDict('F9E1DF', '202'),
  \},
  \'orange': {
    \'darker'  : colors#buildToneDict('DD4814', ' 94'),
    \'dark'    : colors#buildToneDict('E46D43', '130'),
    \'default' : colors#buildToneDict('EB9172', '166'),
    \'light'   : colors#buildToneDict('F0AC95', '208'),
    \'lighter' : colors#buildToneDict('F5C8B9', '226'),
  \},
  \'yellow': {
    \'darker'  : colors#buildToneDict('FFB515', ' 58'),
    \'dark'    : colors#buildToneDict('FFC444', '101'),
    \'default' : colors#buildToneDict('FFD373', '100'),
    \'light'   : colors#buildToneDict('FFDE95', '190'),
    \'lighter' : colors#buildToneDict('FFE9B9', '220'),
  \},
  \'green': {
    \'darker'  : colors#buildToneDict('2e5832', ' 64'),
    \'dark'    : colors#buildToneDict('327a3a', '100'),
    \'default' : colors#buildToneDict('38a747', '106'),
    \'light'   : colors#buildToneDict('6ac777', '148'),
    \'lighter' : colors#buildToneDict('9cdaa5', '149'),
  \},
  \'blue': {
    \'darker'  : colors#buildToneDict('002B36', ' 17'),
    \'dark'    : colors#buildToneDict('33555E', ' 24'),
    \'default' : colors#buildToneDict('668086', ' 25'),
    \'light'   : colors#buildToneDict('8C9FA4', ' 67'),
    \'lighter' : colors#buildToneDict('B3C0C3', ' 74'),
  \},
  \'purple': {
    \'darker'  : colors#buildToneDict('2C001E', ' 52'),
    \'dark'    : colors#buildToneDict('56334B', '124'),
    \'default' : colors#buildToneDict('806678', '160'),
    \'light'   : colors#buildToneDict('A08C9A', '196'),
    \'lighter' : colors#buildToneDict('C0B3BC', '202'),
  \},
  \'grey': {
    \'darkest' : colors#buildToneDict('232120', '233'),
    \'darker'  : colors#buildToneDict('353230', '234'),
    \'dark'    : colors#buildToneDict('575450', '236'),
    \'default' : colors#buildToneDict('8b867f', '238'),
    \'light'   : colors#buildToneDict('aea79f', '243'),
    \'lighter' : colors#buildToneDict('cecac5', '250'),
    \'lightest': colors#buildToneDict('e7e5e2', '254'),
  \},
  \'black': {
    \'default' : colors#buildToneDict('000000', '0')
  \},
  \'white': {
    \'default' : colors#buildToneDict('FFFFFF', '255')
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
let g:spRed      = "guisp=".g:colors.red.darker.hex
let g:spYellowDr = "guisp=".g:colors.yellow.darker.hex
let g:spYellowD  = "guisp=".g:colors.yellow.default.hex
let g:spYellowLr = "guisp=".g:colors.yellow.lighter.hex

" ################################# FORMATS ###################################
let g:bgNone     = "guibg=NONE     ctermbg=NONE "
let g:fgNone     = "guifg=NONE     ctermfg=NONE "
let g:bgInherit  = "guibg=BG       ctermbg=BG   "
let g:fgInherit  = "guifg=FG       ctermfg=FG   "
let g:bgInvert   = "guibg=FG       ctermbg=FG   "
let g:fgInvert   = "guifg=BG       ctermfg=BG   "
let g:bold       = "gui=BOLD       cterm=BOLD   "
let g:italic     = "gui=ITALIC     cterm=ITALIC "
let g:italicBold = "gui=ITALIC,BOLD cterm=ITALIC,BOLD "
let g:none       = "gui=NONE       cterm=NONE   "
let g:underline  = "gui=UNDERLINE  cterm=UNDERLINE "
let g:undercurl  = "gui=UNDERCURL  cterm=UNDERCURL "
