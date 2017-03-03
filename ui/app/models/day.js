import DS from 'ember-data';

export default DS.Model.extend({
  date: DS.attr('date'),
  weekend: DS.attr('boolean'),
  holiday: DS.attr('boolean'),
  tasks: DS.hasMany('task'),
  users: DS.hasMany('users')
});
