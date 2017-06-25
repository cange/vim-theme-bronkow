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

      result += `  \\'${colorName}': {\n`
      tones.forEach((tone, index) => {
        const toneSeparator = index >= toneCount ? '' : ','

        result += this.renderTone(tone['tone'], tone['color'], tone['cterm'], toneSeparator)
      })
      result += `  \\}${colorSeparator}\n`
    }

    return `" Palette: {{{\n\nlet g:bronkow#colors = {${result}\\}\n\n" }}}`
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
    const result = `    \\'${name}': { 'cterm': ${ctermValue}, 'gui': '${hex}' }${separator}\n`

    return result
  }
}

module.exports = VimColorGenerator
