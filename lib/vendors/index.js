const glob = require('glob')

module.exports = {
  name: 'vendors',

  isDevelopingAddon: function() {
    return true
  },

  included: function(app) {
    this._super.included(app)

    // app.options.sassOptions = app.options.sassOptions || {}
    // app.options.sassOptions.includePaths = app.options.sassOptions.includePaths || []
    //
    // app.options.sassOptions.includePaths.push(
    //   'bower_components/bootstrap/scss/'
    // )
    //
    // app.options.sassOptions.includePaths.push(
    //   'bower_components/font-awesome/scss/'
    // )

    // import tether
    app.import('bower_components/tether/dist/js/tether.js')

    // import bootstrap javscript
    app.import('bower_components/bootstrap/dist/js/bootstrap.js')

    // Import font-awesome fonts
    let files = glob.sync('bower_components/font-awesome/fonts/*')
    files.forEach(file => {
      app.import(file, {
        destDir: 'assets/fonts/'
      })
    })
  }
}
