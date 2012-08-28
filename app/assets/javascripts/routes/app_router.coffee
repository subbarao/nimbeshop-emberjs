Myshop.Router = Ember.Router.extend
  location: 'hash'
  root: Ember.Route.extend
    homePage: Ember.Route.transitionTo('linkGroups.index')
    showProduct: Ember.Route.transitionTo('products.show')
    showProductGroup: Ember.Route.transitionTo('productGroups.show')

    index: Ember.Route.extend
      route: '/'
      redirectsTo: 'linkGroups.index'

    linkGroups: Ember.Route.extend
      route: '/link_groups'

      index: Ember.Route.extend
        route: '/'
        connectOutlets: (router) ->
          unless cart = router.get('cartController').get('cart')
            transaction = router.get('store').transaction()
            cart = transaction.createRecord(Myshop.Order)
            router.get('applicationController').set('transaction', transaction)

          router.
            get('applicationController').
            connectOutlet('linkGroups', Myshop.LinkGroup.find())

          router.
            get('applicationController').
            connectOutlet('cart', 'cart', cart)

          router.
            get('linkGroupsController').
            connectOutlet('products', 'products', Myshop.Product.find())

          return

    products: Ember.Route.extend
      route: '/products'

      show: Ember.Route.extend
        route: '/:product_id'
        connectOutlets: (router, product) ->
          router.
            get('applicationController').
            connectOutlet('product', product)

          return

    productGroups: Ember.Route.extend
      route: '/product_groups'

      show: Ember.Route.extend
        route: '/:product_group_id'
        connectOutlets: (router, productGroup) ->

          router.
            get('linkGroupsController').
            connectOutlet('products', 'products', productGroup.get('products'))
          return
