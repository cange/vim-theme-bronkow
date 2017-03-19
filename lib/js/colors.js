module.exports = {
  green: [ // light green
    { tone: 'lighter', color: '#DCEDC8', name: '100' },
    { tone: 'light'  , color: '#AED581', name: '300' },
    { tone: 'dark'   , color: '#689F38', name: '700' },
    { tone: 'darker' , color: '#33691E', name: '900' },
  ],
  purple: [ // deep purple
    { tone: 'lighter', color: '#B388FF', name: 'A100' },
  ],
  blue: [ // light blue
    { tone: 'lighter', color: '#80D8FF', name: 'A100' },
    { tone: 'light'  , color: '#40C4FF', name: 'A200' },
    { tone: 'dark'   , color: '#00B0FF', name: 'A400' },
  ],
  cyan: [
    { tone: 'lighter', color: '#B2EBF2', name: '100' },
    { tone: 'light'  , color: '#80DEEA', name: '200' },
    { tone: 'dark'   , color: '#00ACC1', name: '600' },
    { tone: 'darker' , color: '#006064', name: '900' },
  ],
  red: [
    { tone: 'light'  , color: '#E57373', name: '300' },
    { tone: 'dark'   , color: '#D32F2F', name: '700' },
  ],
  orange: [
    { tone: 'lighter', color: '#FFE0B2', name: '100' },
    { tone: 'light'  , color: '#FFB74D', name: '300' },
    { tone: 'dark'   , color: '#F57C00', name: '700' },
    { tone: 'darker' , color: '#E65100', name: '900' },
  ],
  black: [
    { tone: 'medium', color: '#000000', name: 'Black' },
  ],
  shade: [ // blue grey
    { tone: 'lightest', color: '#eceff1', name: '50',  cterm: 254 },
    { tone: 'lighter',  color: '#cfd8dc', name: '100', cterm: 251 },
    { tone: 'light',    color: '#b0bec5', name: '200', cterm: 250 },
    { tone: 'medium',   color: '#37474f', name: '800', cterm: 237 },
    { tone: 'dark',     color: '#263238', name: '900', cterm: 235 },
    { tone: 'darker',   color: '#212B30', name: '',    cterm: 234 },
    { tone: 'darkest',  color: '#1E272C', name: '',    cterm: 233 },
  ],
  grey: [
    { tone: 'lighter', color: '#EEEEEE', name: '200', cterm: 255 },
    { tone: 'light'  , color: '#BDBDBD', name: '400', cterm: 249 },
    { tone: 'dark'   , color: '#616161', name: '700', cterm: 241 },
  ],
  white: [
    { tone: 'medium' , color: '#FFFFFF', name: 'White' },
  ],
}
