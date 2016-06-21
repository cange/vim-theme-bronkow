ru colors/bronkow/original/powerline_colors.vim
" order of items [fg, bg, style]
let g:Powerline#Colorschemes#bronkowDark#colorscheme = Pl#Colorscheme#Init([
  \ Pl#Hi#Segments(['SPLIT'], {
    \ 'n': ['white'    , 'shadeD'   ],
    \ }),
  \
  \ Pl#Hi#Segments(['branch', 'raw', 'filesize'], {
    \ 'n': ['shadeDst' , 'green'    ],
    \ 'i': ['white'    , 'blue'     ],
    \ 'v': ['white'    , 'orange'   ],
    \ 'r': ['shadeLr'  , 'redD'     ],
    \ 'N': ['shadeDst' , 'shade'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.filepath'], {
    \ 'n': ['shadeL'                ],
    \ 'N': ['shade'                 ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo', 'filename', 'filepath'], {
    \ 'n': ['shadeLr'  , 'shadeDr'  ],
    \ 'N': ['shadeL'   , 'shadeDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['static_str'], {
    \ 'n': ['shadeDst' , 'orangeL'  ],
    \ 'N': ['orangeL'  , 'shadeDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.flags'], {
    \ 'n': ['green'    , ['bold']   ],
    \}),
  \
  \ Pl#Hi#Segments(['currenttag', 'fullcurrenttag', 'fileformat', 'fileencoding', 'pwd', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
    \ 'n': ['shade'    , 'shadeDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['scrollpercent'], {
    \ 'n': ['green'    , 'shadeD'   ],
    \ 'i': ['blue'     , 'shadeDr'  ],
    \ 'v': ['orangeD'  , 'shadeDr'  ],
    \ 'r': ['red'      , 'shadeDr'  ],
    \ 'N': ['shadeDst' , 'shade'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo'], {
    \ 'n': ['green'    , 'shadeD'    , ['bold']],
    \ 'i': ['blueL'    , 'blueD'     , ['bold']],
    \ 'v': ['orangeL'  , 'orangeD'   , ['bold']],
    \ 'r': ['redL'     , 'shade'     , ['bold']],
    \ 'N': ['shadeDst' , 'shade'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo.line.tot'], {
    \ 'n': ['green'   ],
    \ 'i': ['blue'    ],
    \ 'v': ['orange'  ],
    \ 'r': ['redL'    ],
    \ 'N': ['shadeDst'],
    \ }),
  \
  \ Pl#Hi#Segments(['errors'], {
    \ 'n': ['red'      , 'shadeD'    , ['bold']],
    \ 'N': ['shadeL'   , 'blueD'     , ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
    \ 'n': ['shadeDst' , 'orangeL'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:static_str.name', 'command_t:static_str.name'], {
    \ 'n': ['blueD'    , 'blue'      , ['bold']],
    \ 'N': ['blueD'    , 'shadeDr'   , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['gundo:static_str.buffer', 'command_t:raw.line'], {
    \ 'n': ['blueL'    , 'blueD'    ],
    \ 'N': ['shadeL'   , 'shadeDr'  ],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:SPLIT', 'command_t:SPLIT'], {
    \ 'n': ['white'    , 'shadeDr'  ],
    \ 'N': ['shadeL'   , 'shade'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['nerdtree:raw.name', 'lustyexplorer:static_str.name', 'minibufexplorer:static_str.name', 'tagbar:static_str.name'], {
    \ 'n': ['shadeL'   , 'shadeDr'  ],
    \ 'N': ['shade'    , 'shadeDr'  ],
    \ }),
  \ Pl#Hi#Segments(['nerdtree:SPLIT', 'lustyexplorer:SPLIT', 'minibufexplorer:SPLIT', 'tagbar:SPLIT'], {
    \ 'n': ['shadeL'   , 'shadeDr'  ],
    \ 'N': ['shadeL'   , 'shade'    ],
    \ }),
  \ Pl#Hi#Segments(['lustyexplorer:static_str.buffer', 'tagbar:static_str.buffer'], {
    \ 'n': ['shadeLst' , 'blue'     ],
    \ 'N': ['shadeL'   , 'blueD'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next', 'ctrlp:focus'], {
    \ 'n': ['blueD'    , 'shade'    ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:item'], {
    \ 'n': ['blueL'     , 'blue'     , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:marked'], {
    \ 'n': ['white'    , 'blueD'     , ['bold']],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:SPLIT'], {
    \ 'n': ['shadeLr'  , 'shadeDr'  ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:pwd'], {
    \ 'n': ['shadeL'   , 'shadeDr'  ],
    \ }),
  \ Pl#Hi#Segments(['ctrlp:byfname'], {
    \ 'n': ['blueL'     , 'blue'    ],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:count'], {
    \ 'n': ['shadeD'  , 'shadeLst'  ],
    \ }),
  \ Pl#Hi#Segments(['status'], {
    \ 'n': ['green'    , 'blueD'    ],
    \ 'N': ['shadeL'   , 'blueD'    ],
    \ }),
\ ])
