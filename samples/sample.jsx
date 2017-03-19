import React, {
  Component,
  PropTypes
} from 'react'
import I18n from 'i18n-js'
// internal
import translations from './translations'

class FirstFeature extends Component {
  constructor(props) {
    super(props)
    I18n.translations = translations

    this.state = {
      locale: I18n.locale
    }
    this._handleClick = this._handleClick.bind(this)
  }

  _handleClick() {
    I18n.locale = I18n.locale === 'en' ? 'de' : 'en'

    this.setState({ locale: I18n.locale })
  }

  render() {
    const { name } = this.props

    return (
      <div className="panel">
        <h2>{I18n.t('title', { name })}</h2>
        <button onClick={this._handleClick}>Toggle locale</button>
      </div>
    )
  }
}

FirstFeature.propTypes = {
  name: PropTypes.string
}

export default FirstFeature

