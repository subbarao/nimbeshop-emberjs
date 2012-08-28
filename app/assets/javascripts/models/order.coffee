Myshop.Order = DS.Model.extend
  lineItems: DS.hasMany('Myshop.LineItem' , embedded: true)
