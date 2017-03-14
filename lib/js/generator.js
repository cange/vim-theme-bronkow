const c2xterm = require('color2xterm')
const COLORS = require('./colors')

const Generator = function() {
  this.colors = COLORS
}

Generator.prototype.run = function() {
  let colorIndex = 0
  let result = ''
  const colorCount = Object.keys(this.colors).length
  const colors = this.colors

  for(const tone in colors) {
    colorIndex++
    let toneIndex = 0
    const tones = colors[tone]
    const toneCount = Object.keys(tones).length
    const colorSeparator = colorIndex >= colorCount ? '' : ','

    result += `\t\\'${tone}': {\n`
    for(const color in tones) {
      toneIndex++
      const toneSeparator = toneIndex >= toneCount ? '' : ','

      result += this.renderTone(color, tones[color], toneSeparator)
    }
    result += `\t\\}${colorSeparator}\n`
  }

  return `let g:colors = {\n${result}\\}`
}

Generator.prototype.renderTone = function(colorName, hex, separator) {
  const cterm = Number(c2xterm.hex2xterm(hex))
  const hexadecimal = hex.replace(/#/, '0x')
  const toneTabs = colorName.length <= 5 ? '\t\t' : '\t'
  const ctermSpaces = cterm < 100 ? '  ' : ' '

  return `\t\t\\'${colorName}':${toneTabs}{ 'cterm': ${cterm},${ctermSpaces}'gui': '${hex}' }${separator}\n`
}

module.exports = Generator
