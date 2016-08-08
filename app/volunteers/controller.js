import Ember from 'ember'

export default Ember.Controller.extend({

  administrativePostings: Ember.computed('model', function() {
    return this.get('model').filter((element) => {
      return element.get('category').toLowerCase() === 'administrative'
    })
  }),

  technologyPostings: Ember.computed('model', function() {
    return this.get('model').filter((element) => {
      return element.get('category').toLowerCase() === 'technology'
    })
  }),

  marketingPostings: Ember.computed('model', function() {
    return this.get('model').filter((element) => {
      return element.get('category').toLowerCase() === 'marketing'
    })
  })
})
