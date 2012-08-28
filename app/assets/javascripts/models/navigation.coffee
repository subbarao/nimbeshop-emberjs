Myshop.Navigation = DS.Model.extend
  productGroup: DS.belongsTo('Myshop.ProductGroup' , embedded: true)
