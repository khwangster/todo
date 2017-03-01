import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  email: DS.attr('string'),
  picture_url: 'https://s.gravatar.com/avatar/bae584e0645abb7e71fa2bf1859484e8?s=80',
});
