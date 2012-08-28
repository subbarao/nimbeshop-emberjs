Myshop.ProductsController = Ember.ArrayController.extend
  linkGroupsController: null
  groupsOfThree: (->
    length = @.get('length')
    all = []
    for i in [0...(length/3)]
      group = []
      for j in [0...3]
        index = (i*3) + j
        if index >= length
          all.push(group)
          return all
        group.push(@.objectAt(index))
      all.push(group)

    all
  ).property('length')
