ru colors/bronkow/original/powerline_colors.vim
" order of items [fg, bg, style]
let g:Powerline#Colorschemes#bronkowDark#colorscheme = Pl#Colorscheme#Init([
  \ Pl#Hi#Segments(['SPLIT'], {
    \ 'n': ['white'   , 'greyD'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['branch', 'raw', 'filesize'], {
    \ 'n': ['greyLst' , 'greenD'  ],
    \ 'i': ['white'   , 'blueD'   ],
    \ 'v': ['white'   , 'orangeD' ],
    \ 'r': ['greyLr'  , 'redDr'   ],
    \ 'N': ['greyDst' , 'grey'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.filepath'], {
    \ 'n': ['greyL'  ],
    \ 'N': ['grey'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo', 'filename', 'filepath'], {
    \ 'n': ['greyLr'  , 'greyDr'  ],
    \ 'N': ['greyL'   , 'greyDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['static_str'], {
    \ 'n': ['greyDst' , 'yellowDr'],
    \ 'N': ['yellow'  , 'greyDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.flags'], {
    \ 'n': ['yellowDr', ['bold']  ],
    \}),
  \
  \ Pl#Hi#Segments(['currenttag', 'fullcurrenttag', 'fileformat', 'fileencoding', 'pwd', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
    \ 'n': ['grey'    , 'greyDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['scrollpercent'], {
    \ 'n': ['greenD'  , 'greyDr'  ],
    \ 'i': ['blue'    , 'greyDr'  ],
    \ 'v': ['orange'  , 'greyDr'  ],
    \ 'r': ['red'     , 'greyDr'  ],
    \ 'N': ['greyDst' , 'grey'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo'], {
    \ 'n': ['greenL'  , 'greenD'   , ['bold']],
    \ 'i': ['blueL'   , 'blueD'    , ['bold']],
    \ 'v': ['orangeLr', 'orangeD'  , ['bold']],
    \ 'r': ['redL'    , 'grey'     , ['bold']],
    \ 'N': ['greyDst' , 'grey'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo.line.tot'], {
    \ 'n': ['greenDr'],
    \ 'i': ['blueDr' ],
    \ 'v': ['orangeL'],
    \ 'r': ['redL'   ],
    \ 'N': ['greyDst'],
    \ }),
  \
  \ Pl#Hi#Segments(['errors'], {
    \ 'n': ['red'     , 'greyD'    , ['bold']],
    \ 'N': ['greyL'   , 'blueDr'   , ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
    \ 'n': ['greyDst' , 'yellow'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:static_str.name', 'command_t:static_str.name'], {
    \ 'n': ['blueDr'  , 'blue'     , ['bold']],
    \ 'N': ['blueD'   , 'greyDr'   , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['gundo:static_str.buffer', 'command_t:raw.line'], {
    \ 'n': ['blueLr'  , 'blueDr'  ],
    \ 'N': ['greyL'   , 'greyDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:SPLIT', 'command_t:SPLIT'], {
    \ 'n': ['white'   , 'greyDr'  ],
    \ 'N': ['greyL'   , 'grey'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['nerdtree:raw.name', 'lustyexplorer:static_str.name', 'minibufexplorer:static_str.name', 'tagbar:static_str.name'], {
    \ 'n': ['greyL'   , 'greyDr'  ],
    \ 'N': ['grey'    , 'greyDr'  ],
    \ }),
  \ Pl#Hi#Segments(['nerdtree:SPLIT', 'lustyexplorer:SPLIT', 'minibufexplorer:SPLIT', 'tagbar:SPLIT'], {
    \ 'n': ['greyL'   , 'greyDr'  ],
    \ 'N': ['greyL'   , 'grey'    ],
    \ }),
  \ Pl#Hi#Segments(['lustyexplorer:static_str.buffer', 'tagbar:static_str.buffer'], {
    \ 'n': ['greyLst' , 'blue'    ],
    \ 'N': ['greyL'   , 'blueD'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next'], {
    \ 'n': ['blueD'   , 'grey'    ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:item'], {
    \ 'n': ['blueLr'  , 'blueDr'   , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:marked'], {
    \ 'n': ['blue'    , 'greyDr'   , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:SPLIT'], {
    \ 'n': ['greyLr'  , 'greyDr'  ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:pwd'], {
    \ 'n': ['greyL'   , 'greyDr'  ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:focus'], {
    \ 'n': ['grey'    , 'greyDr'  ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:byfname'], {
    \ 'n': ['greyDst' , 'blueDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:count'], {
    \ 'n': ['greyL'   , 'red'     ],
    \ }),
  \ Pl#Hi#Segments(['status'], {
    \ 'n': ['greenDr' , 'blueD'   ],
    \ 'N': ['greyL'   , 'blueD'   ],
    \ }),
\ ])
