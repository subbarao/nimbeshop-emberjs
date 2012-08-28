Myshop.Router = Ember.Router.extend
  location: 'hash'
  root: Ember.Route.extend
    homePage: Ember.Route.transitionTo('products.index')
    showProduct: Ember.Route.transitionTo('products.show')

    index: Ember.Route.extend
      route: '/'
      redirectsTo: 'products.index'

    products: Ember.Route.extend
      route: '/products'

      index: Ember.Route.extend
        route: '/'
        connectOutlets: (router) ->

          router.
            get('applicationController').
            connectOutlet('products', Myshop.Product.find())

          linkGroupsController = router.get('linkGroupsController')
          linkGroupsController.set('content',  Myshop.LinkGroup.find())

          router.get('productsController').set('linkGroupsController', linkGroupsController)

          return

      show: Ember.Route.extend
        route: '/:product_id'
        showProducts: Ember.Route.transitionTo('index')
        connectOutlets: (router, product) ->
          router.
            get('applicationController').
            connectOutlet('product', product)

          return
