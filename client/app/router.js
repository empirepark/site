import Ember from 'ember'
import config from './config/environment'

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
})

Router.map(function() {
  this.route('programs')
  this.route('volunteers')
  this.route('membership')
})

export default Router
