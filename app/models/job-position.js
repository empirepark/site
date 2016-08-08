import DS from 'ember-data'
const { attr } = DS

export default DS.Model.extend({
  title: attr('string'),
  category: attr('string'),
  type: attr('string'),
  timeCommitment: attr('string'),
  description: attr('string'),
  responsibilities: attr('string'),
  requirements: attr('string')
})
