fun! bronkow#tones#map_generator(colors, mode)
  let blue = a:colors.blue
  let cyan = a:colors.cyan
  let green = a:colors.green
  let grey = a:colors.grey
  let orange = a:colors.orange
  let purple = a:colors.purple
  let red = a:colors.red
  let shade = a:colors.shade

  if (a:mode == 'dark')
    call bronkow#converters#tone_var('Blue1',   blue.lighter)
    call bronkow#converters#tone_var('Blue2',   blue.light)
    call bronkow#converters#tone_var('Blue3',   blue.dark)

    call bronkow#converters#tone_var('Green1',  green.lighter)
    call bronkow#converters#tone_var('Green2',  green.light)
    call bronkow#converters#tone_var('Green3',  green.dark)
    call bronkow#converters#tone_var('Green4',  green.darker)

    call bronkow#converters#tone_var('Grey1',   grey.lighter)
    call bronkow#converters#tone_var('Grey2',   grey.light)
    call bronkow#converters#tone_var('Grey3',   grey.dark)

    call bronkow#converters#tone_var('Purple1', purple.lighter)

    call bronkow#converters#tone_var('Cyan1',  cyan.lighter)
    call bronkow#converters#tone_var('Cyan2',  cyan.light)
    call bronkow#converters#tone_var('Cyan3',  cyan.medium)
    call bronkow#converters#tone_var('Cyan4',  cyan.dark)

    call bronkow#converters#tone_var('Orange1', orange.lighter)
    call bronkow#converters#tone_var('Orange2', orange.light)
    call bronkow#converters#tone_var('Orange3', orange.dark)
    call bronkow#converters#tone_var('Orange4', orange.darker)

    call bronkow#converters#tone_var('Shade1',  shade.medium)
    call bronkow#converters#tone_var('Shade2',  shade.dark)
    call bronkow#converters#tone_var('Shade3',  shade.darker)
    call bronkow#converters#tone_var('Shade4',  shade.darkest)
  else
    call bronkow#converters#tone_var('Blue1', blue.darker)
    call bronkow#converters#tone_var('Blue2', blue.dark)
    call bronkow#converters#tone_var('Blue3', blue.light)

    call bronkow#converters#tone_var('Cyan1',  cyan.darker)
    call bronkow#converters#tone_var('Cyan2',  cyan.dark)
    call bronkow#converters#tone_var('Cyan3',  cyan.medium)
    call bronkow#converters#tone_var('Cyan4',  cyan.light)

    call bronkow#converters#tone_var('Green1', green.darker)
    call bronkow#converters#tone_var('Green2', green.dark)
    call bronkow#converters#tone_var('Green3', green.light)
    call bronkow#converters#tone_var('Green4', green.lighter)

    call bronkow#converters#tone_var('Grey1', grey.darkest)
    call bronkow#converters#tone_var('Grey2', grey.darker)
    call bronkow#converters#tone_var('Grey3', grey.dark)

    call bronkow#converters#tone_var('Orange1', orange.darker)
    call bronkow#converters#tone_var('Orange2', orange.dark)
    call bronkow#converters#tone_var('Orange3', orange.light)
    call bronkow#converters#tone_var('Orange4', orange.lighter)

    call bronkow#converters#tone_var('Purple1', purple.darker)

    call bronkow#converters#tone_var('Shade1', grey.lightest)
    call bronkow#converters#tone_var('Shade2', grey.lighter)
    call bronkow#converters#tone_var('Shade3', grey.light)
    call bronkow#converters#tone_var('Shade4', grey.medium)
  endif

  call bronkow#converters#tone_var('Red1', red.light)
  call bronkow#converters#tone_var('Red2', red.dark)
endfun
