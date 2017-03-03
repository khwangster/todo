import DS from 'ember-data';

export default DS.Model.extend({
  day: DS.belongsTo('day'),
  description: DS.attr('string'),
  status: DS.attr('string'),
  user: DS.belongsTo('user')
});
