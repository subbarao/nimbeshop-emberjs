Myshop.CartController = Ember.Controller.extend
  count: (->
    @.get('content').get('lineItems.length')
  ).property('content')
