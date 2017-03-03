import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'i',
  classNames: ['trash', 'outline', 'icon', 'actionable-icon'],

  click() {
    this.sendAction('onClick')
  }
});
