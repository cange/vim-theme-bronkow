ru autoload/Powerline/Colorschemes/cubuntuColors.vim
ru colors/cubuntu/original/powerline_colors.vim
" order of items [fg, bg, style]
let g:Powerline#Colorschemes#cubuntuLight#colorscheme = Pl#Colorscheme#Init([
  \ Pl#Hi#Segments(['SPLIT'], {
    \ 'n': ['white'   , 'greyLr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['branch', 'raw', 'filesize'], {
    \ 'n': ['white'   , 'greenD'  ],
    \ 'i': ['white'   , 'blue'    ],
    \ 'v': ['white'   , 'orangeLr'],
    \ 'r': ['white'   , 'red'     ],
    \ 'N': ['greyL'   , 'greyLr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.filepath'], {
    \ 'n': ['greyLr' ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo', 'filename', 'filepath'], {
    \ 'n': ['greyLst' , 'greyL'   ],
    \ 'N': ['greyLr'  , 'greyL'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['static_str'], {
    \ 'n': ['white'   , 'yellowL'  ],
    \ 'N': ['yellowL' , 'greyL'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.flags'], {
    \ 'n': ['greenL'  , ['bold']  ],
    \ }),
  \
  \ Pl#Hi#Segments(['currenttag', 'fullcurrenttag', 'fileformat', 'fileencoding', 'pwd', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
    \ 'n': ['greyLr'  , 'greyL'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['scrollpercent'], {
    \ 'n': ['green'   , 'greyL'   ],
    \ 'i': ['blueDr'  , 'greyL'   ],
    \ 'v': ['orangeLr', 'greyL'   ],
    \ 'r': ['redL'   , 'greyL'    ],
    \ 'N': ['greyL'   , 'greyLr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo'], {
    \ 'n': ['greenL'  , 'greenD'   , ['bold']],
    \ 'i': ['blue'    , 'blueDr'   , ['bold']],
    \ 'v': ['orangeD' , 'orangeLr' , ['bold']],
    \ 'r': ['redLr'   , 'redD'     , ['bold']],
    \ 'N': ['greyLr'  , 'greyL'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo.line.tot'], {
    \ 'n': ['green'  ],
    \ 'i': ['blueD'  ],
    \ 'v': ['orange' ],
    \ 'r': ['redL'   ],
    \ 'N': ['greyLr' ],
    \ }),
  \
  \ Pl#Hi#Segments(['errors'], {
    \ 'n': ['red'     , 'greyLr'   , ['bold']],
    \ 'N': ['greyL'   , 'blueDr'   , ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
    \ 'n': ['greyL'   , 'yellowL' ],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:static_str.name', 'command_t:static_str.name'], {
    \ 'n': ['blueDr'  , 'blue'     , ['bold']],
    \ 'N': ['blueD'   , 'greyDr'   , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['gundo:static_str.buffer', 'command_t:raw.line'], {
    \ 'n': ['blueLr'  , 'blueDr'  ],
    \ 'N': ['greyL'   , 'greyD'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:SPLIT', 'command_t:SPLIT'], {
    \ 'n': ['white'   , 'greyD'   ],
    \ 'N': ['greyL'   , 'grey'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['nerdtree:raw.name', 'lustyexplorer:static_str.name', 'minibufexplorer:static_str.name', 'tagbar:static_str.name'], {
    \ 'n': ['greyLst' , 'greyL'   ],
    \ 'N': ['greyLr'  , 'greyL'   ],
    \ }),
  \ Pl#Hi#Segments(['nerdtree:SPLIT', 'lustyexplorer:SPLIT', 'minibufexplorer:SPLIT', 'tagbar:SPLIT'], {
    \ 'n': ['greyL'   , 'greyLr'  ],
    \ }),
  \ Pl#Hi#Segments(['lustyexplorer:static_str.buffer', 'tagbar:static_str.buffer'], {
    \ 'n': ['greyLst' , 'blue'    ],
    \ 'N': ['greyL'   , 'blueD'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next'], {
    \ 'n': ['orangeL' , 'greyLr'  ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:item'], {
    \ 'n': ['orangeDr', 'orangeL'  , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:marked'], {
    \ 'n': ['orangeL' , 'greyL'    , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:SPLIT'], {
    \ 'n': ['greyL'   , 'greyLr'  ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:pwd'], {
    \ 'n': ['greyLr'  , 'greyL'   ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:focus'], {
    \ 'n': ['grey'    , 'greyLr'  ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:byfname'], {
    \ 'n': ['greyLr'  , 'orange'  ],
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
