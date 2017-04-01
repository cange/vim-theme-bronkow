fun! bronkow#extensions#airline#init(colors)
  let h = bronkow#helper#new(a:colors)
  let g:airline_theme = 'bronkow'

  let s:normal1 = h.airline_set('shade4', 'shade2')
  let s:normal2 = h.airline_set('shade2', 'shade3')
  let s:normal3 = h.airline_set('shade1', 'shade4')

  "let g:airline#themes#bronkow_dark#palette = s:palette
endfun
