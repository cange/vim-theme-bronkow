let g:colors = {
  \'red': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#980101 ', 'group': [ 52, 0x980101] },
    \'dark':     { 'cterm': '124 ', 'hex': '#D40000 ', 'group': [124, 0xD40000] },
    \'default':  { 'cterm': '160 ', 'hex': '#FD3301 ', 'group': [160, 0xFD3301] },
    \'light':    { 'cterm': '196 ', 'hex': '#FF643D ', 'group': [196, 0xFF643D] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#FF7452 ', 'group': [202, 0xFF7452] }
  \},
  \'orange': {
    \'darker':   { 'cterm': ' 94 ', 'hex': '#DD4814 ', 'group': [ 94, 0xDD4814] },
    \'dark':     { 'cterm': '130 ', 'hex': '#E46D43 ', 'group': [130, 0xE46D43] },
    \'default':  { 'cterm': '166 ', 'hex': '#EB9172 ', 'group': [166, 0xEB9172] },
    \'light':    { 'cterm': '208 ', 'hex': '#F1B6A1 ', 'group': [208, 0xF1B6A1] },
    \'lighter':  { 'cterm': '226 ', 'hex': '#F8DAD0 ', 'group': [226, 0xF8DAD0] }
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
    \'dark':     { 'cterm': '100 ', 'hex': '#508550 ', 'group': [100, 0x508550] },
    \'default':  { 'cterm': '106 ', 'hex': '#8DAD8C ', 'group': [106, 0x8DAD8C] },
    \'light':    { 'cterm': '148 ', 'hex': '#C3D9C3 ', 'group': [148, 0xC3D9C3] },
    \'lighter':  { 'cterm': '149 ', 'hex': '#F7FFF7 ', 'group': [149, 0xF7FFF7] }
  \},
  \'cyan': {
    \'darker':   { 'cterm': ' 23 ', 'hex': '#002D3D ', 'group': [ 23, 0x002D3D] },
    \'dark':     { 'cterm': ' 30 ', 'hex': '#003366 ', 'group': [ 30, 0x003366] },
    \'default':  { 'cterm': ' 31 ', 'hex': '#336699 ', 'group': [ 31, 0x336699] },
    \'light':    { 'cterm': ' 37 ', 'hex': '#6699CC ', 'group': [ 37, 0x6699CC] },
    \'lighter':  { 'cterm': '116 ', 'hex': '#AACCEE ', 'group': [116, 0xAACCEE] }
  \},
  \'blue': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#002B36 ', 'group': [ 52, 0x002B36] },
    \'dark':     { 'cterm': '124 ', 'hex': '#073642 ', 'group': [124, 0x073642] },
    \'default':  { 'cterm': '160 ', 'hex': '#586E75 ', 'group': [160, 0x586E75] },
    \'light':    { 'cterm': '196 ', 'hex': '#657B83 ', 'group': [196, 0x657B83] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#93A1A1 ', 'group': [202, 0x93A1A1] }
  \},
  \'purple': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#2C001E ', 'group': [ 52, 0x2C001E] },
    \'dark':     { 'cterm': '124 ', 'hex': '#56334B ', 'group': [124, 0x56334B] },
    \'default':  { 'cterm': '160 ', 'hex': '#806678 ', 'group': [160, 0x806678] },
    \'light':    { 'cterm': '196 ', 'hex': '#AB99A5 ', 'group': [196, 0xAB99A5] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#D5CCD2 ', 'group': [202, 0xD5CCD2] }
  \},
  \'grey': {
    \'darkest':  { 'cterm': '233 ', 'hex': '#333333 ', 'group': [233, 0x333333] },
    \'darker':   { 'cterm': '234 ', 'hex': '#717073 ', 'group': [234, 0x717073] },
    \'dark':     { 'cterm': '236 ', 'hex': '#AEA79F ', 'group': [236, 0xAEA79F] },
    \'default':  { 'cterm': '238 ', 'hex': '#BEB9B2 ', 'group': [238, 0xBEB9B2] },
    \'light':    { 'cterm': '243 ', 'hex': '#CECAC5 ', 'group': [243, 0xCECAC5] },
    \'lighter':  { 'cterm': '250 ', 'hex': '#DFDCD9 ', 'group': [250, 0xDFDCD9] },
    \'lightest': { 'cterm': '254 ', 'hex': '#EFEDEC ', 'group': [254, 0xEFEDEC] }
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
for col in keys(g:colors)
  let c_d = g:colors[col]
  let g:colors[col].fg = {}
  let g:colors[col].bg = {}
  for tone in keys(c_d)
    let t_d = c_d[tone]
    if !(tone == 'fg' || tone == 'bg')
      let name =  colors#capitalize(col)
      let label = s:toneMapping[tone]
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
