const c2xterm = require('color2xterm')
const COLORS = require('./colors')

const Generator = function() {
  this.colors = COLORS
}

class Blubber {
  constructor() {
  }
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

    result += "\t\\'"+tone+"': {\n"
    for(const color in tones) {
      toneIndex++
      const toneSeparator = toneIndex >= toneCount ? '' : ','

      result += this.renderTone(color, tones[color], toneSeparator)
    }
    result += "\t\\}"+colorSeparator+"\n"
  }

  return 'let g:colors = {\n'+result+'\\}'
}

Generator.prototype.renderTone = function(colorName, hex, separator) {
  const rgb = Number(c2xterm.hex2xterm(hex))
  const hexadecimal = hex.replace(/#/, '0x')

  return "\t\t\\'"+colorName+"':\t{ 'cterm': '"+rgb+"', 'hex': '"+hex+"', 'group': ["+rgb+", "+hexadecimal+"] }"+separator+"\n"
}

module.exports = Generator
