import $ from 'jquery'

export default class CardsResizer {

  constructor (breakpoints) {
    this.breakpoints = breakpoints
    this.resizeId = 0
    this.hasHeight = false
    this.isInitial = true
  }

  setHeight (height) {
    this.hasHeight = true
    this.$cards.each(function () {
      let $this = $(this)
      let $parent = $this.parent()

      $parent.css('height', height || $this.outerHeight())
    })
  }

  clearHeight () {
    this.$cards.parent().each(function () {
      $(this).css('height', '')
    })
    this.hasHeight = false
  }

  delay (height) {
    let delay = this.isInitial ? 0 : 300

    clearTimeout(this.resizeId)

    this.resizeId = setTimeout(() => {
      this.setHeight(height)
    }, delay)

    this.isInitial = false
  }

  init () {
    let self = this

    this.$cards = $('.js-card-resizer .card')
    if (this.$cards.length === 0) { return }

    $(window).on('resize', function () {
      var width = $(this).width()

      if (width > self.breakpoints.LARGE) {
        self.delay('420px')
      }
      else if (width > self.breakpoints.MEDIUM) {
        self.delay('')
      }
      else if (self.hasHeight) {
        self.clearHeight();
      }

    }).trigger('resize')
  }
}

