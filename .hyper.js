module.exports = {
  config: {
    fontSize: 12,
    fontFamily: '"Meslo LG M for Powerline", "DejaVu Sans Mono", "Lucida Console", monospace',
    cursorColor: 'rgba(255,255,255,0.5)',
    cursorShape: 'BLOCK',
    foregroundColor: '#779492',
    backgroundColor: '#2a373e',
    borderColor: '#2a373e',
    css: `
      .tabs_nav {
        height: 20px;
        line-height: 20px;
      }
      .tab_text {
        height: 20px;
      }
      .tab_textInner {
        color: #779492;
        font-weight: bold;
        font-size: 14px;
      }
      .tab_icon {
        top: 3px;
      }
      .tabs_list {
        max-height: 20px;
      }
      .hyperterm_main {
        margin-top: -14px;
      }
    `,
    termCSS: `
      * {
        font-feature-settings: 'liga' 0;
      }
    `,
    padding: '0',
    colors: {
      black: '#2e3436',
      red: '#c00',
      green: '#4e9a06',
      yellow: '#c4a000',
      blue: '#3465a4',
      magenta: '#75507b',
      cyan: '#06989a',
      white: '#d3d7cf',
      lightBlack: '#555753',
      lightRed: '#ef2929',
      lightGreen: '#8ae234',
      lightYellow: '#fce94f',
      lightBlue: '#729fcf',
      lightMagenta: '#ad7fa8',
      lightCyan: '#34e2e2',
      lightWhite: '#eeeeec'
    }
  },
  plugins: [

  ],
  localPlugins: [

  ]
};
