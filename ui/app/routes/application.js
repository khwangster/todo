import Ember from 'ember';
import RSVP from 'rsvp';

export default Ember.Route.extend({
  model() {
    return RSVP.hash({
      day: this.store.findRecord('day', '2017-02-28', {include: 'tasks,users,users.tasks' })
    });
  }
});


