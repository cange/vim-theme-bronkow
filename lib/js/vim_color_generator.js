const c2xterm = require('color2xterm')
const COLORS = require('./colors')

class VimColorGenerator {
  constructor() {
    this.colors = COLORS
  }

  run() {
    let colorIndex = 0
    let result = ''
    const colorCount = Object.keys(this.colors).length
    const colors = this.colors

    for(const color in colors) {
      colorIndex++
      const tones = colors[color]
      const toneCount = Object.keys(tones).length
      const colorSeparator = colorIndex >= colorCount ? '' : ','
      const colorName = this.transformName(color)

      result += `\t\\'${colorName}': {\n`
      tones.forEach((tone, index) => {
        const toneSeparator = index >= toneCount ? '' : ','

        result += this.renderTone(tone['tone'], tone['color'], toneSeparator)
      })
      result += `\t\\}${colorSeparator}\n`
    }

    return `let g:colors = {\n${result}\\}`
  }

  transformName(str) {
    const name = str.replace(/-\w/g, (txt) => (
      txt.replace(/-(\w)/g, '$1').charAt(0).toUpperCase() +
      txt.substr(2).toLowerCase())
    )

    return name
  }

  renderTone(name, hex, separator) {
    const cterm = Number(c2xterm.hex2xterm(hex))
    const hexadecimal = hex.replace(/#/, '0x')
    const toneTabs = name.length <= 5 ? '\t\t' : '\t'
    const ctermSpaces = cterm < 10 ? '\t\t' : '\t'

    return `\t\t\\'${name}':${toneTabs}{ 'cterm': ${cterm},${ctermSpaces}'gui': '${hex}' }${separator}\n`
  }
}

module.exports = VimColorGenerator
