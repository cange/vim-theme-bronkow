let g:colors = {
  \'red': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#d93829 ', 'group': [ 52, 0xd93829] },
    \'dark':     { 'cterm': '124 ', 'hex': '#e16054 ', 'group': [124, 0xe16054] },
    \'default':  { 'cterm': '160 ', 'hex': '#e8887f ', 'group': [160, 0xe8887f] },
    \'light':    { 'cterm': '196 ', 'hex': '#f0afa9 ', 'group': [196, 0xf0afa9] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#f4c4bf ', 'group': [202, 0xf4c4bf] }
  \},
  \'orange': {
    \'darker':   { 'cterm': ' 94 ', 'hex': '#DD4814 ', 'group': [ 94, 0xDD4814] },
    \'dark':     { 'cterm': '130 ', 'hex': '#E46D43 ', 'group': [130, 0xE46D43] },
    \'default':  { 'cterm': '166 ', 'hex': '#EB9172 ', 'group': [166, 0xEB9172] },
    \'light':    { 'cterm': '208 ', 'hex': '#F1B6A1 ', 'group': [208, 0xF1B6A1] },
    \'lighter':  { 'cterm': '226 ', 'hex': '#F8DAD0 ', 'group': [226, 0xF8DAD0] }
  \},
  \'yellow': {
    \'darker':   { 'cterm': ' 58 ', 'hex': '#ffb515 ', 'group': [ 58, 0xffb515] },
    \'dark':     { 'cterm': '101 ', 'hex': '#ffc444 ', 'group': [101, 0xffc444] },
    \'default':  { 'cterm': '100 ', 'hex': '#ffd373 ', 'group': [100, 0xffd373] },
    \'light':    { 'cterm': '190 ', 'hex': '#ffe1a1 ', 'group': [190, 0xffe1a1] },
    \'lighter':  { 'cterm': '220 ', 'hex': '#ffe9b9 ', 'group': [220, 0xffe9b9] }
  \},
  \'green': {
    \'darker':   { 'cterm': ' 64 ', 'hex': '#015A01 ', 'group': [ 64, 0x015A01] },
    \'dark':     { 'cterm': '100 ', 'hex': '#508550 ', 'group': [100, 0x508550] },
    \'default':  { 'cterm': '106 ', 'hex': '#8DAD8C ', 'group': [106, 0x8DAD8C] },
    \'light':    { 'cterm': '148 ', 'hex': '#C3D9C3 ', 'group': [148, 0xC3D9C3] },
    \'lighter':  { 'cterm': '149 ', 'hex': '#F7FFF7 ', 'group': [149, 0xF7FFF7] }
  \},
  \'blue': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#002B36 ', 'group': [ 52, 0x002B36] },
    \'dark':     { 'cterm': '124 ', 'hex': '#33555e ', 'group': [124, 0x33555e] },
    \'default':  { 'cterm': '160 ', 'hex': '#668086 ', 'group': [160, 0x668086] },
    \'light':    { 'cterm': '196 ', 'hex': '#99aaaf ', 'group': [196, 0x99aaaf] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#b3c0c3 ', 'group': [202, 0xb3c0c3] }
  \},
  \'purple': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#2C001E ', 'group': [ 52, 0x2C001E] },
    \'dark':     { 'cterm': '124 ', 'hex': '#421a35 ', 'group': [124, 0x421a35] },
    \'default':  { 'cterm': '160 ', 'hex': '#56334b ', 'group': [160, 0x56334b] },
    \'light':    { 'cterm': '196 ', 'hex': '#6c4d62 ', 'group': [196, 0x6c4d62] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#806678 ', 'group': [202, 0x806678] }
  \},
  \'grey': {
    \'darkest':  { 'cterm': '233 ', 'hex': '#1a1a1a ', 'group': [233, 0x1a1a1a] },
    \'darker':   { 'cterm': '234 ', 'hex': '#333333 ', 'group': [234, 0x333333] },
    \'dark':     { 'cterm': '236 ', 'hex': '#4d4d4d ', 'group': [236, 0x4d4d4d] },
    \'default':  { 'cterm': '238 ', 'hex': '#666666 ', 'group': [238, 0x666666] },
    \'light':    { 'cterm': '243 ', 'hex': '#AEA79F ', 'group': [243, 0xAEA79F] },
    \'lighter':  { 'cterm': '250 ', 'hex': '#BEB9B2 ', 'group': [250, 0xBEB9B2] },
    \'lightest': { 'cterm': '254 ', 'hex': '#CECAC5 ', 'group': [254, 0xCECAC5] }
  \},
  \'black': {
    \'default':  { 'cterm': '  0 ', 'hex': '#000000 ', 'group': [  0, 0x000000] }
  \},
  \'white': {
    \'default':  { 'cterm': '255 ', 'hex': '#FFFFFF ', 'group': [255, 0xFFFFFF] }
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
      let name =  colors#capitalize(colorKey)
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
let g:spRed      = "guisp=".g:colors.red.default.hex
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
