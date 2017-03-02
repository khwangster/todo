import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  email: DS.attr('string'),
  // picture_url: Ember.computed('email', function() {
  //   return `https://s.gravatar.com/avatar/${md5(this.get('email'))}`
  // })
  picture_url: DS.attr('string'),
  tasks: DS.hasMany('task')
});
