ru autoload/Powerline/Colorschemes/cubuntuColors.vim
" order of items [fg, bg, style]
let g:Powerline#Colorschemes#cubuntuDark#colorscheme = Pl#Colorscheme#Init([
	\ Pl#Hi#Segments(['SPLIT'], {
		\ 'n': ['white'   , 'grey'    ],
		\ }),
	\
	\ Pl#Hi#Segments(['branch', 'raw', 'filesize'], {
		\ 'n': ['greyLr'  , 'greenDr' ],
		\ 'i': ['greyLr'  , 'blueD'   ],
		\ 'v': ['greyLr'  , 'orangeD' ],
		\ 'r': ['greyLr'  , 'redDr'   ],
		\ 'N': ['greyD'   , 'grey'    ],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.filepath'], {
		\ 'n': ['greyL'  ],
		\ 'N': ['grey'   ],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo', 'filename', 'filepath'], {
		\ 'n': ['greenDr' , 'greyD'   ],
		\ 'i': ['blueD'   , 'greyD'   ],
		\ 'v': ['orange'  , 'greyD'   ],
		\ 'N': ['greyL'   , 'greyD'   ],
		\ }),
	\
	\ Pl#Hi#Segments(['static_str'], {
		\ 'n': ['greyL'   , 'purpleD' ],
		\ 'N': ['purpleDr', 'grey'    ],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.flags'], {
		\ 'n': ['green'   , ['bold']  ],
		\ 'i': ['greenD'  , ['bold']  ],
		\ 'N': ['greyL'   , ['bold']  ],
		\ }),
	\
	\ Pl#Hi#Segments(['currenttag', 'fullcurrenttag', 'fileformat', 'fileencoding', 'pwd', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
		\ 'n': ['grey'    , 'greyD'   ],
		\ }),
	\
	\ Pl#Hi#Segments(['scrollpercent'], {
		\ 'n': ['greenDr' , 'greyD'   ],
		\ 'i': ['blueD'   , 'greyD'   ],
		\ 'v': ['orange'  , 'greyD'   ],
		\ 'r': ['redLr'   , 'redDr'   ],
		\ 'N': ['greyD'   , 'grey'    ],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo'], {
		\ 'n': ['greyD'   , 'greenDr'  , ['bold']],
		\ 'i': ['blue'    , 'blueDr'   , ['bold']],
		\ 'v': ['orangeL' , 'orangeDr' , ['bold']],
		\ 'r': ['redL'    , 'grey'     , ['bold']],
		\ 'N': ['greyD'   , 'grey'     ],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo.line.tot'], {
		\ 'n': ['greyD'  ],
		\ 'i': ['blueD'  ],
		\ 'v': ['orange' ],
		\ 'r': ['redL'   ],
		\ 'N': ['greyD'  ],
		\ }),
	\
	\ Pl#Hi#Segments(['errors'], {
		\ 'n': ['red'     , 'grey'     , ['bold']],
		\ 'N': ['greyL'   , 'blueDr'   , ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
		\ 'n': ['redLr'   , 'red'      , ['bold']],
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
		\ 'n': ['greyL'   , 'greyD'   ],
		\ 'N': ['grey'    , 'greyD'   ],
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
		\ 'n': ['cyanD'   , 'grey'    ],
		\ }),
	\ Pl#Hi#Segments(['ctrlp:item'], {
		\ 'n': ['cyanLr'  , 'cyanDr'   , ['bold']],
		\ }),
	\ Pl#Hi#Segments(['ctrlp:marked'], {
		\ 'n': ['cyan'    , 'greyD'    , ['bold']],
		\ }),
	\ Pl#Hi#Segments(['ctrlp:SPLIT'], {
		\ 'n': ['greyLr'  , 'greyDr'  ],
		\ }),
	\ Pl#Hi#Segments(['ctrlp:pwd'], {
		\ 'n': ['greyL'   , 'greyD'   ],
		\ }),
	\ Pl#Hi#Segments(['ctrlp:focus'], {
		\ 'n': ['grey'    , 'greyDr'  ],
		\ }),
	\ Pl#Hi#Segments(['ctrlp:byfname'], {
		\ 'n': ['greyDst' , 'cyanDr'],
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
