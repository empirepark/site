import DS from 'ember-data'
const { attr } = DS

export default DS.Model.extend({
  title: attr('string'),
  cost: attr('string'),
  img: attr('string'),
  audience: attr('string'),
  hook: attr('string'),
  flavour: attr('string')
})
