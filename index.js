// import Generator from './lib/js/generator.js'
const path = require('path')
const chalk = require('chalk')
const svg2png = require('svg2png')
const fs = require('fs')

const VimColorGenerator = require('./lib/js/vim_color_generator.js')
const SVGGenerator = require('./lib/js/svg_generator.js')

const vimColorGenerator = new VimColorGenerator()
const svgPrinter = new SVGGenerator()
const themePath = './colors/bronkow/material'

fs.writeFile(path.join(themePath, 'colors.vim'), vimColorGenerator.run(), (err) => {
  if (err) throw err
  console.log(chalk.grey('[1/3]'), 'Creating vim colors file...')
})

fs.writeFile(path.join(themePath, 'palette.svg'), svgPrinter.run(), (err) => {
  if (err) throw err
  console.log(chalk.grey('[2/3]'), 'Creating SVG palette...')

  fs.readFile(path.join(themePath, 'palette.svg'), (err, data) => {
    if (err) throw err

    svg2png(data).then(buffer => fs.writeFile(path.join(themePath, 'palette.png'), buffer, (err) => {
      if (err) throw err
      console.log(chalk.grey('[3/3]'), 'Converting SVG palette to PNG...')
    }))
  })
})
