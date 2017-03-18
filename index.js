const path = require('path')
const chalk = require('chalk')
const svg2png = require('svg2png')
const fs = require('fs')

const VimColorGenerator = require('./lib/js/vim_color_generator.js')
const SVGGenerator = require('./lib/js/svg_generator.js')
const COLORS = require('./lib/js/colors.js')

const vimColorGenerator = new VimColorGenerator(COLORS)
const svgPrinter = new SVGGenerator(COLORS)
const themePath = './colors/bronkow'

fs.writeFile(path.join('autoload', 'bronkow.vim'), vimColorGenerator.run(), (err) => {
  if (err) throw err

  console.log(chalk.grey('[1/3]'), 'Creating vim colors file...')
  createSVG(path.join(themePath, 'palette.svg'), createPNG)
})

const createSVG = (filePath, callback) => {
  fs.writeFile(filePath, svgPrinter.run(), (err) => {
    if (err) throw err

    console.log(chalk.grey('[2/3]'), 'Creating SVG palette...')
    callback(filePath)
  })
}

const createPNG = (svgFilePath) => {
  fs.readFile(svgFilePath, (err, data) => {
    if (err) throw err

    svg2png(data).then(buffer => fs.writeFile(path.join(themePath, 'palette.png'), buffer, (err) => {
      if (err) throw err
      console.log(chalk.grey('[3/3]'), 'Converting SVG palette to PNG...')
    }))
  })
}
