import Ember from 'ember';
import RSVP from 'rsvp';

export default Ember.Route.extend({
  model(params) {
    return RSVP.hash({
      day: this.store.findRecord('day', params.date, {include: 'tasks,users,users.tasks' })
    });
  }

});


