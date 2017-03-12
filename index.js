// import Generator from './lib/js/generator.js'
const Generator = require('./lib/js/generator.js')

const fs = require('fs')
const printer = new Generator()

fs.writeFile('./colors/bronkow/material/colors.vim', printer.run(), (err) => {
  if (err) throw err;
  console.log('It\'s saved!')
})
