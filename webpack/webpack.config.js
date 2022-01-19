// Primer paso 
const path = require('path')
/** @type {import('webpack').Configuration} */ // Este es para autocompletar lo mas común de webpack
module.exports = 
{
    entry: './src/index.js', // Punto de entrada de la app
    output: {
        path: path.resolve(__dirname, 'dist'), // Es para asegurar la carpeta de salida del projecto
        filename: 'main.js'
    },
    resolve: 
    {
        extensions: ['.js']
    },
    module:
    {
        rules: [
            {
                test: /\.m?js$/, // esta es una expreción regular
                exclude: /node_modules/,
                use:
                {
                    loader: 'babel-loader'
                }
            }// mudulo para trabajar con babel en webpack
        ]
    }
}