require("stylesheets/application.scss")

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

console.log('Hello World from Webpacker')
