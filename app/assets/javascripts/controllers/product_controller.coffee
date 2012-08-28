Myshop.ProductController = Ember.ObjectController.extend
  previewUrl: (->
    previewing = @.get('previewing')

    unless previewing
      previewing = @.get('pictures').objectAt(0)

    if previewing
      @.set('previewing', previewing)
      previewing.get('largeUrl')
    else
      @.get('pictureUrl')

  ).property('content.isLoaded', 'previewing')

  groupsOf: (->
    length = @.get('pictures.length')
    all = []
    for i in [0...(length/5)]
      group = []
      for j in [0..5]
        index = (i*5) + j
        if index >= length
          all.push(group)
          return all
        group.push(@.get('pictures').objectAt(index))
      all.push(group)

    all
  ).property('content.pictures')
