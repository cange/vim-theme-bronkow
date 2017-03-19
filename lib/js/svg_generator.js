
class SVGGenerator {
  static style() {
    return `
      <style type="text/css">
      text {
        font-family: Roboto, sans-serif;
        font-size: 6px;
      }
      .title {
        text-transform: capitalize;
      }
      </style>
    `
  }

  constructor(colors) {
    this.colors = colors
    this.height = 16
    this.offset = 4
    this.columnCount = 5
    this.maxToneCount = 7
    this.width = 96
  }

  toneHeader(color, name) {
    const labelColor = this.colorContrast(color)
    const tX = this.offset
    const tY = this.height * .667
    name = name.replace(/-/g, ' ')

    return `
      <g>
        <rect class="tone-canvas" x="0" y="0" width="${this.width}" height="${this.height}" style="fill: ${color}" />
        <g style="fill: ${labelColor}">
          <text class="title" x="${tX}" y="0" text-anchor="start" transform="translate(0, ${tY})">${name}</text>
        </g>
      </g>
      `
  }

  colorContrast(color) {
    color = color.replace(/#(.*)/,'0x$1')
    return parseInt(color, 16) > (0xffffff / 2) ? 'black' : 'white'
  }

  toneChild(color, tone, name, y) {
    const labelColor = this.colorContrast(color)
    const rX = 0
    const rY = this.height
    const endX = this.width - this.offset
    const startX = this.offset
    const tY = this.height * 1.667

    return `
      <g transform="translate(0, ${y})">
        <rect class="tone-canvas" x="${rX}" y="${rY}" width="${this.width}" height="${this.height}" style="fill: ${color}" />
        <g style="fill: ${labelColor}" transform="translate(0, ${tY})">
          <text class="tone-label" x="${startX}" y="0" text-anchor="start">${name}</text>
          <text class="tone-label" x="${endX}"   y="0" text-anchor="end">${color}</text>
        </g>
      </g>
    `
  }

  run() {
    let result = ''
    const colorCount = Object.keys(this.colors).length
    const colors = this.colors
    const horizontalGutter = this.offset
    const verticalGutter = this.offset * 2
    const headerMargin = 1
    const titleHeight = this.height + headerMargin + verticalGutter
    const maxHeight = this.height * this.maxToneCount + titleHeight
    let colorIndex = 0
    let rowCount = 0

    for(const color in colors) {
      const tones = colors[color]
      let toneIndex = 0
      const columnPos = colorIndex % this.columnCount
      let x = (horizontalGutter + this.width) * columnPos

      if (columnPos === 0 && colorIndex >= this.columnCount) {
        rowCount++
      }

      let y = rowCount * (maxHeight)

      result += `
        <g class="color-set" transform="translate(${x}, ${y})">
          ${this.toneHeader(tones[0].color, color)}
      `

      tones.forEach((tone, index) => {
        const toneY = headerMargin + this.height * index

        result += this.toneChild(tone['color'], tone['tone'], tone['name'], toneY)
      })
      result += '</g>'
      colorIndex++
    }
    const docWidth = (this.width + horizontalGutter) * this.columnCount - horizontalGutter
    const docHeight = (maxHeight) * (rowCount + 1) - verticalGutter

    return (`
      <svg width="${docWidth * 2}" viewBox="0 0 ${docWidth} ${docHeight}" xmlns="http://www.w3.org/2000/svg" version="1.1">
        <title>Bronkow material theme</title>
        ${result}
        ${SVGGenerator.style()}
      </svg>
    `)
  }
}

module.exports = SVGGenerator
