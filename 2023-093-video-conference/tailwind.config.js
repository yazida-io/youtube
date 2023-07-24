/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./index.html",
        "./src/**/*.{vue,js,ts,jsx,tsx}",
    ],
    theme: {
        extend: {
            colors: {
                gray: {
                    DEFAULT: "#323232"
                },
                red: {
                    DEFAULT: "#DE6962"
                }
            }
        },
    },
    plugins: [],
}

