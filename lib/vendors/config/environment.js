'use strict'

module.exports = function(/* environment, appConfig */) {
  return {
    sassOptions: {
      includePaths: [
        'bower_components/bootstrap/scss/',
        'bower_components/font-awesome/scss/',
        'bower_components/tether/src/css'
      ]
    }
  }
}
