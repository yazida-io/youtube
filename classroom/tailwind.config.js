/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'primary': '#303739',
        'primary-light': '#4c5458',
        'secondary': '#f5f554',
        'secondary-light': '#f5f554',
        'tertiary': '#c8e2e7',
      }
    },
  },
  plugins: [],
}

