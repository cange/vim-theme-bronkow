let g:colors = {
  \'red': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#980101 ', 'group': [ 52, 0x980101] },
    \'dark':     { 'cterm': '124 ', 'hex': '#D40000 ', 'group': [124, 0xD40000] },
    \'default':  { 'cterm': '160 ', 'hex': '#FD3301 ', 'group': [160, 0xFD3301] },
    \'light':    { 'cterm': '196 ', 'hex': '#FF643D ', 'group': [196, 0xFF643D] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#FF7452 ', 'group': [202, 0xFF7452] }
  \},
  \'orange': {
    \'darker':   { 'cterm': ' 94 ', 'hex': '#F44800 ', 'group': [ 94, 0xF44800] },
    \'dark':     { 'cterm': '130 ', 'hex': '#F56A00 ', 'group': [130, 0xF56A00] },
    \'default':  { 'cterm': '166 ', 'hex': '#FB8B00 ', 'group': [166, 0xFB8B00] },
    \'light':    { 'cterm': '208 ', 'hex': '#F0A513 ', 'group': [208, 0xF0A513] },
    \'lighter':  { 'cterm': '226 ', 'hex': '#EEC73A ', 'group': [226, 0xEEC73A] }
  \},
  \'yellow': {
    \'darker':   { 'cterm': ' 58 ', 'hex': '#986601 ', 'group': [ 58, 0x986601] },
    \'dark':     { 'cterm': '101 ', 'hex': '#CCA301 ', 'group': [101, 0xCCA301] },
    \'default':  { 'cterm': '100 ', 'hex': '#FDCA01 ', 'group': [100, 0xFDCA01] },
    \'light':    { 'cterm': '190 ', 'hex': '#FFFF00 ', 'group': [190, 0xFFFF00] },
    \'lighter':  { 'cterm': '220 ', 'hex': '#FDFF99 ', 'group': [220, 0xFDFF99] }
  \},
  \'green': {
    \'darker':   { 'cterm': ' 64 ', 'hex': '#015A01 ', 'group': [ 64, 0x015A01] },
    \'dark':     { 'cterm': ' 70 ', 'hex': '#339900 ', 'group': [ 70, 0x339900] },
    \'default':  { 'cterm': ' 76 ', 'hex': '#5FCC29 ', 'group': [ 76, 0x5FCC29] },
    \'light':    { 'cterm': '112 ', 'hex': '#98FC66 ', 'group': [112, 0x98FC66] },
    \'lighter':  { 'cterm': '118 ', 'hex': '#CCFF99 ', 'group': [118, 0xCCFF99] }
  \},
  \'cyan': {
    \'darker':   { 'cterm': ' 23 ', 'hex': '#002D3D ', 'group': [ 23, 0x002D3D] },
    \'dark':     { 'cterm': ' 30 ', 'hex': '#003366 ', 'group': [ 30, 0x003366] },
    \'default':  { 'cterm': ' 31 ', 'hex': '#336699 ', 'group': [ 31, 0x336699] },
    \'light':    { 'cterm': ' 37 ', 'hex': '#6699CC ', 'group': [ 37, 0x6699CC] },
    \'lighter':  { 'cterm': '116 ', 'hex': '#AACCEE ', 'group': [116, 0xAACCEE] }
  \},
  \'blue': {
    \'darker':   { 'cterm': ' 17 ', 'hex': '#013397 ', 'group': [ 17, 0x013397] },
    \'dark':     { 'cterm': ' 24 ', 'hex': '#0169C9 ', 'group': [ 24, 0x0169C9] },
    \'default':  { 'cterm': ' 25 ', 'hex': '#0197FD ', 'group': [ 25, 0x0197FD] },
    \'light':    { 'cterm': ' 32 ', 'hex': '#56B9FD ', 'group': [ 32, 0x56B9FD] },
    \'lighter':  { 'cterm': ' 45 ', 'hex': '#B3DEFD ', 'group': [ 45, 0xB3DEFD] }
  \},
  \'purple': {
    \'darker':   { 'cterm': ' 53 ', 'hex': '#290052 ', 'group': [ 53, 0x290052] },
    \'dark':     { 'cterm': ' 54 ', 'hex': '#47008f ', 'group': [ 54, 0x47008f] },
    \'default':  { 'cterm': ' 55 ', 'hex': '#6600CC ', 'group': [ 55, 0x6600CC] },
    \'light':    { 'cterm': ' 92 ', 'hex': '#FF00FF ', 'group': [ 92, 0xFF00FF] },
    \'lighter':  { 'cterm': ' 93 ', 'hex': '#FF9BFF ', 'group': [ 93, 0xFF9BFF] }
  \},
  \'grey': {
    \'darkest':  { 'cterm': '233 ', 'hex': '#24221E ', 'group': [233, 0x24221E] },
    \'darker':   { 'cterm': '234 ', 'hex': '#36332D ', 'group': [234, 0x36332D] },
    \'dark':     { 'cterm': '236 ', 'hex': '#47443C ', 'group': [236, 0x47443C] },
    \'default':  { 'cterm': '238 ', 'hex': '#565248 ', 'group': [238, 0x565248] },
    \'light':    { 'cterm': '243 ', 'hex': '#787265 ', 'group': [243, 0x787265] },
    \'lighter':  { 'cterm': '250 ', 'hex': '#999281 ', 'group': [250, 0x999281] },
    \'lightest': { 'cterm': '254 ', 'hex': '#BDB49F ', 'group': [254, 0xBDB49F] }
  \},
  \'black': {
    \'default':  { 'cterm': '  0 ', 'hex': '#12110F ', 'group': [  0, 0x12110F] }
  \},
  \'white': {
    \'default':  { 'cterm': '255 ', 'hex': '#12110F ', 'group': [255, 0xEEEEEE] }
  \}
\}

" ################################# HELPER ####################################
fun! colors#capitalize(string)
  let first = toupper(a:string[0])
  let rest = a:string[1:-1]
  return first.''.rest
endfun

let s:toneLabels = {
      \'darkest':  'Dst',
      \'darker':   'Dr',
      \'dark':     'D',
      \'default':  '',
      \'light':    'L',
      \'lighter':  'Lr',
      \'lightest': 'Lst'
\}

" ########################### VARIALBLE GENERATION ############################
for col in keys(g:colors)
  let c_d = g:colors[col]
  let g:colors[col].fg = {}
  let g:colors[col].bg = {}
  for tone in keys(c_d)
    let t_d = c_d[tone]
    if !(tone == 'fg' || tone == 'bg')
      let name =  colors#capitalize(col)
      let label = s:toneLabels[tone]
      let g:['fg'.name.label] = "guifg=". t_d.hex ."ctermfg=". t_d.cterm
      let g:['bg'.name.label] = "guibg=". t_d.hex ."ctermbg=". t_d.cterm
    endif
  endfor
endfor
" #############################################################################
let color = g:colors.red
let g:spRed      = "guisp=".color.default.hex

let color = g:colors.yellow
let g:spYellowDr = "guisp=".color.darker.hex
let g:spYellowD  = "guisp=".color.default.hex
let g:spYellowLr = "guisp=".color.lighter.hex
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
