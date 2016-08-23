import Ember from 'ember'
import Route from 'empirepark-site/base/route'

export default Route.extend({
  model: function() {
    return this.get('store').findAll('job-position')
  }
})
