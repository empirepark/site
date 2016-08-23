import DS from 'ember-data'
const { attr } = DS

export default DS.Model.extend({
  title: attr('string'),
  category: attr('string'),
  isPaid: attr('boolean'),
  timeCommitment: attr('string'),
  description: attr('string'),
  responsibilities: attr('string'),
  requirements: attr('string'),
  apply: attr('string')
})
