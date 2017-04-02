fun! bronkow#extensions#gitgutter#init(colors)
  let h = bronkow#helper#new(a:colors)

  call h.hilight('GitGutterAdd',          'green3',  'shade3')
  call h.hilight('GitGutterChange',       'orange2', 'shade3')
  call h.hilight('GitGutterDelete',       'red2',    'shade3')
  call h.hilight('GitGutterChangeDelete', 'red1',    'shade3')
endfun
