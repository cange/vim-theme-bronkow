const c2xterm = require('color2xterm')

class VimColorGenerator {
  constructor(colors) {
    this.colors = colors
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

        result += this.renderTone(tone['tone'], tone['color'], tone['cterm'], toneSeparator)
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

  /**
   * @param {string} name
   * @param {string} hex color as hexadecimal
   * @param {number|undefined} cterm custom number; Because cterm converter struggles with monochrome colors
   * @param {string} separator
   */
  renderTone(name, hex, cterm, separator) {
    const ctermValue = cterm || Number(c2xterm.hex2xterm(hex))
    const hexadecimal = hex.replace(/#/, '0x')
    const toneTabs = name.length <= 5 ? '\t\t' : '\t'
    const ctermSpaces = ctermValue < 10 ? '\t\t' : '\t'

    return `\t\t\\'${name}':${toneTabs}{ 'cterm': ${ctermValue},${ctermSpaces}'gui': '${hex}' }${separator}\n`
  }
}

module.exports = VimColorGenerator
