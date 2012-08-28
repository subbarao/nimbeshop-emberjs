Myshop.ProductGroup = DS.Model.extend
  name: DS.attr('string')
  products: DS.hasMany('Myshop.Product' , embedded: true)
