Myshop.Router = Ember.Router.extend
  location: 'hash'
  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'
      redirectsTo: 'products.index'

    products: Ember.Route.extend
      route: '/products'

      index: Ember.Route.extend
        route: '/'
        showProduct: Ember.Route.transitionTo('show')
        connectOutlets: (router) ->
          router.
            get('applicationController').
            connectOutlet('products', Myshop.Product.find())

          return

      show: Ember.Route.extend
        route: '/:product_id'
        showProducts: Ember.Route.transitionTo('index')
        connectOutlets: (router, product) ->
          router.
            get('applicationController').
            connectOutlet('product', product)

          return
