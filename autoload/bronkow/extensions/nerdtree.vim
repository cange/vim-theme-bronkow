fun! bronkow#extensions#nerdtree#init(colors)
  let h = bronkow#helper#new(a:colors)

  " hi link NERDTreeBookmarkName Underlined
  call h.hilight('NERDTreeBookmark',           'shade1')
  call h.hilight('NERDTreeLinkFile',           'shade1')
  call h.hilight('NERDTreeBookmarksHeader',    'shade2', 'shade1', 'bold')
  call h.hilight('NERDTreeCWD',                'blue1',  'none',   'bold')
  call h.hilight('NERDTreeDir',                'cyan2',  'none',   'bold')
  call h.hilight('NERDTreeDirSlash',           'cyan1')
  call h.hilight('NERDTreeExecFile',           'orange2')
  call h.hilight('NERDTreeFlags',              'invert')
  call h.hilight('NERDTreeHelp',               'shade2')
  call h.hilight('NERDTreeHelpKey',            'grey1')
  call h.hilight('NERDTreeClosable',           'grey2')
  call h.hilight('NERDTreeOpenable',           'grey3')
  call h.hilight('NERDTreeToggleOff',          'red1')
endfun
