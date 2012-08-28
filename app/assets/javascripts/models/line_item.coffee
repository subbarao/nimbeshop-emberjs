Myshop.LineItem = DS.Model.extend
  product: DS.hasOne('Myshop.Product' , embedded: true)
  quantity: DS.attr('number')
