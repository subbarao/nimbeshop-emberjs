Myshop.LinkGroup = DS.Model.extend
  name: DS.attr('string')
  navigations: DS.hasMany('Myshop.Navigation' , embedded: true)
