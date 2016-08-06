import DS from 'ember-data'
const { attr } = DS

export default DS.Model.extend({
  name: attr('string'),
  cost: attr('string'),
  audience: attr('string'),
  hook: attr('string'),
  flavour: attr('string')
})
