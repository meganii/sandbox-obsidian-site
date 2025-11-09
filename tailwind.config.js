const colors = require('tailwindcss/colors');

module.exports = {
  content: [
    './layouts/**/*.html',
    './content/**/*.md',
    './layouts/shortcodes/**/*.html'
  ],
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        neutral: {
          50: '#f7f9fc',
          100: '#edf1f7',
          200: '#d8e0ef',
          300: '#b7c4dc',
          400: '#8fa3c7',
          500: '#5d7aa9',
          600: '#3e5886',
          700: '#2e4066',
          800: '#1f2b47',
          900: '#141c30',
          950: '#0c111f'
        },
        sapphire: {
          50: '#e0f2ff',
          100: '#b9e0ff',
          200: '#7ec1ff',
          300: '#4ea8ff',
          400: '#1f8fff',
          500: '#0a6edc',
          600: '#064fb1',
          700: '#063f8a',
          800: '#072f66',
          900: '#07224c',
          950: '#03152f'
        }
      },
      fontFamily: {
        sans: ['"Inter"', 'system-ui', 'sans-serif']
      },
      boxShadow: {
        floating: '0 20px 45px -20px rgba(15, 23, 42, 0.25)'
      }
    }
  },
  plugins: [
    require('@tailwindcss/typography')
  ]
};
