/* global require, module */
var EmberAddon = require('ember-cli/lib/broccoli/ember-addon')
var Funnel = require('broccoli-funnel')

module.exports = function(defaults) {
  var app = new EmberAddon(defaults, {
  })


  var fontAssets = new Funnel('bower_components/font-awesome/fonts', {
    srcDir: '/',
    include: [ '**/*' ],
    destDir: '/assets/fonts'
  })
  /*
    This build file specifies the options for the dummy test app of this
    addon, located in `/tests/dummy`
    This build file does *not* influence how the addon or the app using it
    behave. You most likely want to be modifying `./index.js` or app's build file
  */

  return app.toTree(fontAssets)
}
