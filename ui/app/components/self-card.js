import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['ui', 'segment'],
  self: Ember.computed.filter('users', function(user, index, array) {
    return user.get('id') === '72';
  }),

  store: Ember.inject.service(),

  actions: {
    deleteTask: function(id) {
      console.log("delete task called for id:" + id);
      this.get('store')
        .findRecord('task', id, {backgroundReload: false})
        .then(function (task) {
          console.log('actually deleting task:' + task);
          task.destroyRecord();
        })
    }
  }

});
