import Ember from 'ember';
import RSVP from 'rsvp';

export default Ember.Route.extend({
  model(params) {
    this.set('date', params.date);

    return RSVP.hash({
      day: this.store.findRecord(
        'day',
        params.date,
        {include: 'tasks,users,users.tasks'}
      ),
      date: params.date
    });
  },

  actions: {
    changeDate: function(date) {
      let dateString = date.moment.format('YYYY-MM-DD')
      console.log('got change date to '+ dateString);

      if (dateString === this.get('date')) {
        console.log('same date no op')
      } else {
        this.transitionTo('day', dateString)
      }
    }
  }
});
