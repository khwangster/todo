import DS from 'ember-data';

export default DS.Model.extend({
  day: DS.attr('date'),
  description: DS.attr('string'),
  status: DS.attr('string')
});