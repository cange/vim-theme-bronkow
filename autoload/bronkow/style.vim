fun! s:set_tone(name, tone)
  call bronkow#helper#set_tone(a:name, a:tone)
endfun

fun! bronkow#style#init(colors)
  if get(g:, 'bronkow_style', 0) == 0
    let g:bronkow_style = 'dark'
  endif

  let blue = a:colors.blue
  let cyan = a:colors.cyan
  let green = a:colors.green
  let grey = a:colors.grey
  let orange = a:colors.orange
  let purple = a:colors.purple
  let red = a:colors.red
  let shade = a:colors.shade

  " dark is the default style
  call s:set_tone('blue1',   blue.lighter)
  call s:set_tone('blue2',   blue.light)
  call s:set_tone('blue3',   blue.dark)
  call s:set_tone('blue4',   blue.darker)

  call s:set_tone('green1',  green.lighter)
  call s:set_tone('green2',  green.light)
  call s:set_tone('green3',  green.dark)
  call s:set_tone('green4',  green.darker)

  call s:set_tone('grey1',   grey.lighter)
  call s:set_tone('grey2',   grey.light)
  call s:set_tone('grey3',   grey.dark)

  call s:set_tone('purple1', purple.lighter)

  call s:set_tone('cyan1',   cyan.lighter)
  call s:set_tone('cyan2',   cyan.light)
  call s:set_tone('cyan3',   cyan.medium)
  call s:set_tone('cyan4',   cyan.dark)

  call s:set_tone('orange1', orange.lighter)
  call s:set_tone('orange2', orange.light)
  call s:set_tone('orange3', orange.dark)
  call s:set_tone('orange4', orange.darker)

  call s:set_tone('shade1',  shade.medium)
  call s:set_tone('shade2',  shade.dark)
  call s:set_tone('shade3',  shade.darker)
  call s:set_tone('shade4',  shade.darkest)

  call s:set_tone('red1', red.light)
  call s:set_tone('red2', red.dark)

  if (g:bronkow_style == 'light')
    call s:set_tone('blue1', blue.darker)
    call s:set_tone('blue2', blue.dark)
    call s:set_tone('blue3', blue.light)
    call s:set_tone('blue4', blue.lighter)

    call s:set_tone('cyan1',  cyan.darker)
    call s:set_tone('cyan2',  cyan.dark)
    call s:set_tone('cyan3',  cyan.medium)
    call s:set_tone('cyan4',  cyan.light)

    call s:set_tone('green1', green.darker)
    call s:set_tone('green2', green.dark)
    call s:set_tone('green3', green.light)
    call s:set_tone('green4', green.lighter)

    call s:set_tone('grey1', grey.darkest)
    call s:set_tone('grey2', grey.darker)
    call s:set_tone('grey3', grey.dark)

    call s:set_tone('orange1', orange.darker)
    call s:set_tone('orange2', orange.dark)
    call s:set_tone('orange3', orange.light)
    call s:set_tone('orange4', orange.lighter)

    call s:set_tone('purple1', purple.darker)

    call s:set_tone('shade1', grey.lightest)
    call s:set_tone('shade2', grey.lighter)
    call s:set_tone('shade3', grey.light)
    call s:set_tone('shade4', grey.medium)
  endif

  let g:bronkow_style_loaded = 1
endfun
