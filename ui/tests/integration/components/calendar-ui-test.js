import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('calendar-ui', 'Integration | Component | calendar ui', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{calendar-ui}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#calendar-ui}}
      template block text
    {{/calendar-ui}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
