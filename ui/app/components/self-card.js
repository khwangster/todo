import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['ui', 'segment'],
  self: Ember.computed.filter('users', function(user, index, array) {
    return user.get('id') === '72';
  })
});
