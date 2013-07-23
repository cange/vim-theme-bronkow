" ############################### BASIC COLORS ################################
let g:colors = {
  \'red': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#611b0e ', 'group': [ 52, 0x611b0e] },
    \'dark':     { 'cterm': ' 88 ', 'hex': '#a12d17 ', 'group': [ 88, 0xa12d17] },
    \'default':  { 'cterm': '160 ', 'hex': '#c7381c ', 'group': [160, 0xc7381c] },
    \'light':    { 'cterm': '167 ', 'hex': '#e13f20 ', 'group': [167, 0xe13f20] },
    \'lighter':  { 'cterm': '223 ', 'hex': '#ee4322 ', 'group': [223, 0xee4322] }
  \},
  \'orange': {
    \'darker':   { 'cterm': ' 88 ', 'hex': '#6e3504 ', 'group': [ 88, 0x6e3504] },
    \'dark':     { 'cterm': '136 ', 'hex': '#944706 ', 'group': [136, 0x944706] },
    \'default':  { 'cterm': '208 ', 'hex': '#ae5307 ', 'group': [208, 0xae5307] },
    \'light':    { 'cterm': '215 ', 'hex': '#bb5908 ', 'group': [215, 0xbb5908] },
    \'lighter':  { 'cterm': '221 ', 'hex': '#fa770a ', 'group': [221, 0xfa770a] }
  \},
  \'yellow': {
    \'darker':   { 'cterm': ' 58 ', 'hex': '#4c460f ', 'group': [ 58, 0x4c460f] },
    \'dark':     { 'cterm': '101 ', 'hex': '#736a16 ', 'group': [101, 0x736a16] },
    \'default':  { 'cterm': '143 ', 'hex': '#b3a423 ', 'group': [143, 0xb3a423] },
    \'light':    { 'cterm': '227 ', 'hex': '#d9c72a ', 'group': [227, 0xd9c72a] },
    \'lighter':  { 'cterm': '228 ', 'hex': '#f3de2f ', 'group': [228, 0xf3de2f] }
  \},
  \'green': {
    \'darker':   { 'cterm': ' 64 ', 'hex': '#4c6619 ', 'group': [ 64, 0x4c6619] },
    \'dark':     { 'cterm': '100 ', 'hex': '#7ca628 ', 'group': [100, 0x7ca628] },
    \'default':  { 'cterm': '106 ', 'hex': '#98cc32 ', 'group': [106, 0x98cc32] },
    \'light':    { 'cterm': '148 ', 'hex': '#abe638 ', 'group': [148, 0xabe638] },
    \'lighter':  { 'cterm': '149 ', 'hex': '#b4f33b ', 'group': [149, 0xb4f33b] }
  \},
  \'cyan': {
    \'darker':   { 'cterm': ' 23 ', 'hex': '#00575b ', 'group': [ 23, 0x00575b] },
    \'dark':     { 'cterm': ' 24 ', 'hex': '#007a7f ', 'group': [ 24, 0x007a7f] },
    \'default':  { 'cterm': ' 31 ', 'hex': '#008d92 ', 'group': [ 31, 0x008d92] },
    \'light':    { 'cterm': ' 38 ', 'hex': '#00999f ', 'group': [ 38, 0x00999f] },
    \'lighter':  { 'cterm': '116 ', 'hex': '#009ea5 ', 'group': [116, 0x009ea5] }
  \},
  \'blue': {
    \'darker':   { 'cterm': ' 23 ', 'hex': '#003d53 ', 'group': [ 23, 0x003d53] },
    \'dark':     { 'cterm': ' 24 ', 'hex': '#116685 ', 'group': [ 24, 0x116685] },
    \'default':  { 'cterm': ' 31 ', 'hex': '#1f8ab2 ', 'group': [ 31, 0x1f8ab2] },
    \'light':    { 'cterm': ' 38 ', 'hex': '#269eca ', 'group': [ 38, 0x269eca] },
    \'lighter':  { 'cterm': '116 ', 'hex': '#2aaada ', 'group': [116, 0x2aaada] }
  \},
  \'purple': {
    \'darker':   { 'cterm': ' 54 ', 'hex': '#2b0e35 ', 'group': [ 54, 0x2b0e35] },
    \'dark':     { 'cterm': ' 97 ', 'hex': '#442657 ', 'group': [ 97, 0x442657] },
    \'default':  { 'cterm': '134 ', 'hex': '#5b3775 ', 'group': [134, 0x5b3775] },
    \'light':    { 'cterm': '140 ', 'hex': '#684084 ', 'group': [140, 0x684084] },
    \'lighter':  { 'cterm': '189 ', 'hex': '#71458e ', 'group': [189, 0x71458e] }
  \},
  \'grey': {
    \'darkest':  { 'cterm': '233 ', 'hex': '#12110F ', 'group': [233, 0x12110F] },
    \'darker':   { 'cterm': '234 ', 'hex': '#24221E ', 'group': [234, 0x24221E] },
    \'dark':     { 'cterm': '236 ', 'hex': '#36332D ', 'group': [236, 0x36332D] },
    \'default':  { 'cterm': '238 ', 'hex': '#565248 ', 'group': [238, 0x565248] },
    \'light':    { 'cterm': '243 ', 'hex': '#787265 ', 'group': [243, 0x787265] },
    \'lighter':  { 'cterm': '250 ', 'hex': '#999281 ', 'group': [250, 0x999281] },
    \'lightest': { 'cterm': '254 ', 'hex': '#BDB49F ', 'group': [254, 0xBDB49F] }
  \},
  \'black': {
    \'default':  { 'cterm': '  0 ', 'hex': '#000000 ', 'group': [  0, 0x12120f] }
  \},
  \'white': {
    \'default':  { 'cterm': '255 ', 'hex': '#EEEEEE ', 'group': [255, 0xEEEEEE] }
  \}
\}

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

" #############################################################################
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
