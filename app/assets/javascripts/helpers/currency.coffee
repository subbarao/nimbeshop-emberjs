Handlebars.registerHelper 'currency', (property, options) ->
  value = Ember.Handlebars.getPath(this, property, options)
  new Handlebars.SafeString(accounting.formatMoney(value))
