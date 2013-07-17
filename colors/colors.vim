" ############################### BASIC COLORS ################################
let g:colors = {
  \'red': {
    \'darker':   { 'cterm': ' 52 ', 'hex': '#611b0e ' },
    \'dark':     { 'cterm': ' 88 ', 'hex': '#a12d17 ' },
    \'default':  { 'cterm': '160 ', 'hex': '#c7381c ' },
    \'light':    { 'cterm': '167 ', 'hex': '#e13f20 ' },
    \'lighter':  { 'cterm': '223 ', 'hex': '#ee4322 ' }
  \},
  \'orange': {
    \'darker':   { 'cterm': ' 88 ', 'hex': '#6e3504 ' },
    \'dark':     { 'cterm': '136 ', 'hex': '#944706 ' },
    \'default':  { 'cterm': '208 ', 'hex': '#ae5307 ' },
    \'light':    { 'cterm': '215 ', 'hex': '#bb5908 ' },
    \'lighter':  { 'cterm': '221 ', 'hex': '#fa770a ' }
  \},
  \'yellow': {
    \'darker':   { 'cterm': ' 58 ', 'hex': '#4c460f ' },
    \'dark':     { 'cterm': '101 ', 'hex': '#736a16 ' },
    \'default':  { 'cterm': '143 ', 'hex': '#b3a423 ' },
    \'light':    { 'cterm': '227 ', 'hex': '#d9c72a ' },
    \'lighter':  { 'cterm': '228 ', 'hex': '#f3de2f ' }
  \},
  \'green': {
    \'darker':   { 'cterm': ' 64 ', 'hex': '#4c6619 ' },
    \'dark':     { 'cterm': '100 ', 'hex': '#7ca628 ' },
    \'default':  { 'cterm': '106 ', 'hex': '#98cc32 ' },
    \'light':    { 'cterm': '148 ', 'hex': '#abe638 ' },
    \'lighter':  { 'cterm': '149 ', 'hex': '#b4f33b ' }
  \},
  \'cyan': {
    \'darker':   { 'cterm': ' 23 ', 'hex': '#00575b ' },
    \'dark':     { 'cterm': ' 24 ', 'hex': '#007a7f ' },
    \'default':  { 'cterm': ' 31 ', 'hex': '#008d92 ' },
    \'light':    { 'cterm': ' 38 ', 'hex': '#00999f ' },
    \'lighter':  { 'cterm': '116 ', 'hex': '#009ea5 ' }
  \},
  \'blue': {
    \'darker':   { 'cterm': ' 23 ', 'hex': '#003d53 ' },
    \'dark':     { 'cterm': ' 24 ', 'hex': '#116685 ' },
    \'default':  { 'cterm': ' 31 ', 'hex': '#1f8ab2 ' },
    \'light':    { 'cterm': ' 38 ', 'hex': '#269eca ' },
    \'lighter':  { 'cterm': '116 ', 'hex': '#2aaada ' }
  \},
  \'purple': {
    \'darker':   { 'cterm': ' 54 ', 'hex': '#2b0e35 ' },
    \'dark':     { 'cterm': ' 97 ', 'hex': '#442657 ' },
    \'default':  { 'cterm': '134 ', 'hex': '#5b3775 ' },
    \'light':    { 'cterm': '140 ', 'hex': '#684084 ' },
    \'lighter':  { 'cterm': '189 ', 'hex': '#71458e ' }
  \},
  \'grey': {
    \'darkest':  { 'cterm': '233 ', 'hex': '#1A1918 ' },
    \'darker':   { 'cterm': '234 ', 'hex': '#1C1C1C ' },
    \'dark':     { 'cterm': '236 ', 'hex': '#262523 ' },
    \'default':  { 'cterm': '238 ', 'hex': '#33322f ' },
    \'light':    { 'cterm': '243 ', 'hex': '#595752 ' },
    \'lighter':  { 'cterm': '250 ', 'hex': '#B2AFA4 ' },
    \'lightest': { 'cterm': '254 ', 'hex': '#D9D4C8 ' }
  \},
  \'black':      { 'cterm': '  0 ', 'hex': '#12120f ' },
  \'white':      { 'cterm': '255 ', 'hex': '#F9F9F9 ' }
\}
"
" #############################################################################
let color = g:colors.red
let g:fgRedDr    = "guifg=".color.darker.hex  ." ctermfg=".color.darker.cterm
let g:bgRedDr    = "guibg=".color.darker.hex  ." ctermbg=".color.darker.cterm
let g:bgRedD     = "guibg=".color.dark.hex    ." ctermbg=".color.dark.cterm
let g:fgRedD     = "guifg=".color.dark.hex    ." ctermfg=".color.dark.cterm
let g:bgRed      = "guibg=".color.default.hex ." ctermbg=".color.default.cterm
let g:fgRed      = "guifg=".color.default.hex ." ctermfg=".color.default.cterm
let g:bgRedL     = "guibg=".color.light.hex   ." ctermbg=".color.light.cterm
let g:fgRedL     = "guifg=".color.light.hex   ." ctermfg=".color.light.cterm
let g:bgRedLr    = "guibg=".color.lighter.hex ." ctermbg=".color.lighter.cterm
let g:fgRedLr    = "guifg=".color.lighter.hex ." ctermfg=".color.lighter.cterm

let g:spRed      = "guisp=".color.default.hex

let color = g:colors.orange
let g:fgOrangeDr = "guifg=".color.darker.hex  ." ctermfg=".color.darker.cterm
let g:bgOrangeDr = "guibg=".color.darker.hex  ." ctermbg=".color.darker.cterm
let g:bgOrangeD  = "guibg=".color.dark.hex    ." ctermbg=".color.dark.cterm
let g:fgOrangeD  = "guifg=".color.dark.hex    ." ctermfg=".color.dark.cterm
let g:bgOrange   = "guibg=".color.default.hex ." ctermbg=".color.default.cterm
let g:fgOrange   = "guifg=".color.default.hex ." ctermfg=".color.default.cterm
let g:bgOrangeL  = "guibg=".color.light.hex   ." ctermbg=".color.light.cterm
let g:fgOrangeL  = "guifg=".color.light.hex   ." ctermfg=".color.light.cterm
let g:bgOrangeLr = "guibg=".color.lighter.hex ." ctermbg=".color.lighter.cterm
let g:fgOrangeLr = "guifg=".color.lighter.hex ." ctermfg=".color.lighter.cterm

let color = g:colors.yellow
let g:fgYellowDr = "guifg=".color.darker.hex  ." ctermfg=".color.darker.cterm
let g:bgYellowDr = "guibg=".color.darker.hex  ." ctermbg=".color.darker.cterm
let g:bgYellowD  = "guibg=".color.dark.hex    ." ctermbg=".color.dark.cterm
let g:fgYellowD  = "guifg=".color.dark.hex    ." ctermfg=".color.dark.cterm
let g:bgYellow   = "guibg=".color.default.hex ." ctermbg=".color.default.cterm
let g:fgYellow   = "guifg=".color.default.hex ." ctermfg=".color.default.cterm
let g:bgYellowL  = "guibg=".color.light.hex   ." ctermbg=".color.light.cterm
let g:fgYellowL  = "guifg=".color.light.hex   ." ctermfg=".color.light.cterm
let g:bgYellowLr = "guibg=".color.lighter.hex ." ctermbg=".color.lighter.cterm
let g:fgYellowLr = "guifg=".color.lighter.hex ." ctermfg=".color.lighter.cterm

let g:spYellowDr = "guisp=".color.darker.hex
let g:spYellowD  = "guisp=".color.default.hex
let g:spYellowLr = "guisp=".color.lighter.hex

let color = g:colors.green
let g:fgGreenDr  = "guifg=".color.darker.hex  ." ctermfg=".color.darker.cterm
let g:bgGreenDr  = "guibg=".color.darker.hex  ." ctermbg=".color.darker.cterm
let g:bgGreenD   = "guibg=".color.dark.hex    ." ctermbg=".color.dark.cterm
let g:fgGreenD   = "guifg=".color.dark.hex    ." ctermfg=".color.dark.cterm
let g:bgGreen    = "guibg=".color.default.hex ." ctermbg=".color.default.cterm
let g:fgGreen    = "guifg=".color.default.hex ." ctermfg=".color.default.cterm
let g:bgGreenL   = "guibg=".color.light.hex   ." ctermbg=".color.light.cterm
let g:fgGreenL   = "guifg=".color.light.hex   ." ctermfg=".color.light.cterm
let g:bgGreenLr  = "guibg=".color.lighter.hex ." ctermbg=".color.lighter.cterm
let g:fgGreenLr  = "guifg=".color.lighter.hex ." ctermfg=".color.lighter.cterm

let color = g:colors.cyan
let g:fgCyanDr   = "guifg=".color.darker.hex  ." ctermfg=".color.darker.cterm
let g:bgCyanDr   = "guibg=".color.darker.hex  ." ctermbg=".color.darker.cterm
let g:bgCyanD    = "guibg=".color.dark.hex    ." ctermbg=".color.dark.cterm
let g:fgCyanD    = "guifg=".color.dark.hex    ." ctermfg=".color.dark.cterm
let g:bgCyan     = "guibg=".color.default.hex ." ctermbg=".color.default.cterm
let g:fgCyan     = "guifg=".color.default.hex ." ctermfg=".color.default.cterm
let g:bgCyanL    = "guibg=".color.light.hex   ." ctermbg=".color.light.cterm
let g:fgCyanL    = "guifg=".color.light.hex   ." ctermfg=".color.light.cterm
let g:bgCyanLr   = "guibg=".color.lighter.hex ." ctermbg=".color.lighter.cterm
let g:fgCyanLr   = "guifg=".color.lighter.hex ." ctermfg=".color.lighter.cterm

let color = g:colors.blue
let g:fgBlueDr   = "guifg=".color.darker.hex  ." ctermfg=".color.darker.cterm
let g:bgBlueDr   = "guibg=".color.darker.hex  ." ctermbg=".color.darker.cterm
let g:bgBlueD    = "guibg=".color.dark.hex    ." ctermbg=".color.dark.cterm
let g:fgBlueD    = "guifg=".color.dark.hex    ." ctermfg=".color.dark.cterm
let g:bgBlue     = "guibg=".color.default.hex ." ctermbg=".color.default.cterm
let g:fgBlue     = "guifg=".color.default.hex ." ctermfg=".color.default.cterm
let g:bgBlueL    = "guibg=".color.light.hex   ." ctermbg=".color.light.cterm
let g:fgBlueL    = "guifg=".color.light.hex   ." ctermfg=".color.light.cterm
let g:bgBlueLr   = "guibg=".color.lighter.hex ." ctermbg=".color.lighter.cterm
let g:fgBlueLr   = "guifg=".color.lighter.hex ." ctermfg=".color.lighter.cterm

let color = g:colors.purple
let g:fgPurpleDr = "guifg=".color.darker.hex  ." ctermfg=".color.darker.cterm
let g:bgPurpleDr = "guibg=".color.darker.hex  ." ctermbg=".color.darker.cterm
let g:bgPurpleD  = "guibg=".color.dark.hex    ." ctermbg=".color.dark.cterm
let g:fgPurpleD  = "guifg=".color.dark.hex    ." ctermfg=".color.dark.cterm
let g:bgPurple   = "guibg=".color.default.hex ." ctermbg=".color.default.cterm
let g:fgPurple   = "guifg=".color.default.hex ." ctermfg=".color.default.cterm
let g:bgPurpleL  = "guibg=".color.light.hex   ." ctermbg=".color.light.cterm
let g:fgPurpleL  = "guifg=".color.light.hex   ." ctermfg=".color.light.cterm
let g:bgPurpleLr = "guibg=".color.lighter.hex ." ctermbg=".color.lighter.cterm
let g:fgPurpleLr = "guifg=".color.lighter.hex ." ctermfg=".color.lighter.cterm

let color = g:colors.grey
let g:fgGreyDst  = "guifg=".color.darkest.hex ." ctermfg=".color.darkest.cterm
let g:bgGreyDst  = "guibg=".color.darkest.hex ." ctermbg=".color.darkest.cterm
let g:fgGreyDr   = "guifg=".color.darker.hex  ." ctermfg=".color.darker.cterm
let g:bgGreyDr   = "guibg=".color.darker.hex  ." ctermbg=".color.darker.cterm
let g:bgGreyD    = "guibg=".color.dark.hex    ." ctermbg=".color.dark.cterm
let g:fgGreyD    = "guifg=".color.dark.hex    ." ctermfg=".color.dark.cterm
let g:bgGrey     = "guibg=".color.default.hex ." ctermbg=".color.default.cterm
let g:fgGrey     = "guifg=".color.default.hex ." ctermfg=".color.default.cterm
let g:bgGreyL    = "guibg=".color.light.hex   ." ctermbg=".color.light.cterm
let g:fgGreyL    = "guifg=".color.light.hex   ." ctermfg=".color.light.cterm
let g:bgGreyLr   = "guibg=".color.lighter.hex ." ctermbg=".color.lighter.cterm
let g:fgGreyLr   = "guifg=".color.lighter.hex ." ctermfg=".color.lighter.cterm
let g:bgGreyLst  = "guibg=".color.lightest.hex." ctermbg=".color.lightest.cterm
let g:fgGreyLst  = "guifg=".color.lightest.hex." ctermfg=".color.lightest.cterm

let color = g:colors.white
let g:bgWhite    = "guibg=".color.hex         ." ctermbg=".color.cterm
let g:fgWhite    = "guifg=".color.hex         ." ctermfg=".color.cterm

let color = g:colors.black
let g:bgBlack    = "guibg=".color.hex         ." ctermbg=".color.cterm
let g:fgBlack    = "guifg=".color.hex         ." ctermfg=".color.cterm

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
" ################################## MODES ####################################
let g:modeNormalD   = "#2F331D "
let g:modeNormal    = "#AFD700 "
let g:modeNormalL   = "#EFF7CC "
let g:ctModeNormalD = "58 "
let g:ctModeNormal  = "148 "
let g:ctModeNormalL = "192 "

let g:bgModeNormalD = "guibg=".g:modeNormalD ." ctermbg=".g:ctModeNormalD
let g:fgModeNormalD = "guifg=".g:modeNormalD ." ctermfg=".g:ctModeNormalD
let g:bgModeNormal  = "guibg=".g:modeNormal  ." ctermbg=".g:ctModeNormal
let g:fgModeNormal  = "guifg=".g:modeNormal  ." ctermfg=".g:ctModeNormal
let g:bgModeNormalL = "guibg=".g:modeNormalL ." ctermbg=".g:ctModeNormalL
let g:fgModeNormalL = "guifg=".g:modeNormalL ." ctermfg=".g:ctModeNormalL

let g:bgModeInsertD = g:bgBlueDr
let g:fgModeInsertD = g:fgBlueDr
let g:bgModeInsertL = g:bgBlueD
let g:fgModeInsertL = g:fgBlueD

let g:bgModeVisualD = g:bgOrangeDr
let g:fgModeVisualD = g:fgOrangeDr
let g:bgModeVisual  = g:bgOrange
let g:fgModeVisual  = g:fgOrange
let g:bgModeVisualL = g:bgOrangeL
let g:fgModeVisualL = g:fgOrangeL
let g:bgModeInsert  = g:bgWhite
let g:fgModeInsert  = g:fgWhite
