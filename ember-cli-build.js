/* global require, module */
var EmberApp = require('ember-cli/lib/broccoli/ember-app')

module.exports = function(defaults) {
  var app = new EmberApp(defaults, {
    sourcemaps: {
      enabled: EmberApp.env() !== 'production',
      extensions: ['js']
    }
  })

  return app.toTree()
}
