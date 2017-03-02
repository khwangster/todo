import Ember from 'ember';
import RSVP from 'rsvp';

export default Ember.Route.extend({
  model(params) {
    return RSVP.hash({
      tasks: this.store.findAll('task'),
      users: this.store.findAll('user')
    });
  }
});


