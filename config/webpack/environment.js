const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment,plug.append('provide',
    new webpack,ProvidePlugin({
        $: 'jquery'
        jQuery: 'jquery',
        Popper: ['popper.js', 'default']
    })
    )
module.exports = environment
