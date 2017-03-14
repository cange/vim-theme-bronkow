// import Generator from './lib/js/generator.js'
const VimColorGenerator = require('./lib/js/vim_color_generator.js')
const SVGGenerator = require('./lib/js/svg_generator.js')

const fs = require('fs')
const vimColorGenerator = new VimColorGenerator()
const svgPrinter = new SVGGenerator()

fs.writeFile('./colors/bronkow/material/colors.vim', vimColorGenerator.run(), (err) => {
  if (err) throw err;
  console.log('Vim colors are saved!')
})

 fs.writeFile('./colors/bronkow/material/palette.svg', svgPrinter.run(), (err) => {
   if (err) throw err;
  console.log('Palette SVG is saved!')
})
