let g:colors = {
  \'green': {
    \'darker':   { 'cterm': ' 64 ', 'hex': '#015A01 ', 'group': [ 64, 0x015A01] },
    \'dark':     { 'cterm': '100 ', 'hex': '#508550 ', 'group': [100, 0x508550] },
    \'default':  { 'cterm': '106 ', 'hex': '#8DAD8C ', 'group': [106, 0x8DAD8C] },
    \'light':    { 'cterm': '148 ', 'hex': '#C3D9C3 ', 'group': [148, 0xC3D9C3] },
    \'lighter':  { 'cterm': '149 ', 'hex': '#F7FFF7 ', 'group': [149, 0xF7FFF7] }
  \},
  \'blue': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#002B36 ', 'group': [ 52, 0x002B36] },
    \'dark':     { 'cterm': '124 ', 'hex': '#073642 ', 'group': [124, 0x073642] },
    \'default':  { 'cterm': '160 ', 'hex': '#586E75 ', 'group': [160, 0x586E75] },
    \'light':    { 'cterm': '196 ', 'hex': '#657B83 ', 'group': [196, 0x657B83] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#93A1A1 ', 'group': [202, 0x93A1A1] }
  \},
  \'orange': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#DD4814 ', 'group': [ 52, 0xDD4814] },
    \'dark':     { 'cterm': '124 ', 'hex': '#E46D43 ', 'group': [124, 0xE46D43] },
    \'default':  { 'cterm': '160 ', 'hex': '#EB9172 ', 'group': [160, 0xEB9172] },
    \'light':    { 'cterm': '196 ', 'hex': '#F1B6A1 ', 'group': [196, 0xF1B6A1] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#F8DAD0 ', 'group': [202, 0xF8DAD0] }
  \},
  \'aubergine': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#772953 ', 'group': [ 52, 0x772953] },
    \'dark':     { 'cterm': '124 ', 'hex': '#925475 ', 'group': [124, 0x925475] },
    \'default':  { 'cterm': '160 ', 'hex': '#AD7F98 ', 'group': [160, 0xAD7F98] },
    \'light':    { 'cterm': '196 ', 'hex': '#C9A9BA ', 'group': [196, 0xC9A9BA] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#E4D4DD ', 'group': [202, 0xE4D4DD] }
  \},
  \'dAubergine': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#2C001E ', 'group': [ 52, 0x2C001E] },
    \'dark':     { 'cterm': '124 ', 'hex': '#56334B ', 'group': [124, 0x56334B] },
    \'default':  { 'cterm': '160 ', 'hex': '#806678 ', 'group': [160, 0x806678] },
    \'light':    { 'cterm': '196 ', 'hex': '#AB99A5 ', 'group': [196, 0xAB99A5] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#D5CCD2 ', 'group': [202, 0xD5CCD2] }
  \},
  \'mAubergine': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#5E2750 ', 'group': [ 52, 0x5E2750] },
    \'dark':     { 'cterm': '124 ', 'hex': '#7E5273 ', 'group': [124, 0x7E5273] },
    \'default':  { 'cterm': '160 ', 'hex': '#9E7D96 ', 'group': [160, 0x9E7D96] },
    \'light':    { 'cterm': '196 ', 'hex': '#BFA9B9 ', 'group': [196, 0xBFA9B9] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#DFD4DC ', 'group': [202, 0xDFD4DC] }
  \},
  \'lAubergine': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#77216F ', 'group': [ 52, 0x77216F] },
    \'dark':     { 'cterm': '124 ', 'hex': '#924D8C ', 'group': [124, 0x924D8C] },
    \'default':  { 'cterm': '160 ', 'hex': '#AD7AA9 ', 'group': [160, 0xAD7AA9] },
    \'light':    { 'cterm': '196 ', 'hex': '#C9A6C5 ', 'group': [196, 0xC9A6C5] },
    \'lighter':  { 'cterm': '202 ', 'hex': '#E4D3E2 ', 'group': [202, 0xE4D3E2] }
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
let color = g:colors.orange
let g:spOrangeDr = "guisp=".color.darker.hex
let g:spOrangeD  = "guisp=".color.dark.hex
let g:spOrange   = "guisp=".color.default.hex
let g:spOrangeLr = "guisp=".color.lighter.hex
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
