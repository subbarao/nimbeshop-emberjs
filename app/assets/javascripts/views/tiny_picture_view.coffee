Myshop.TinyPictureView = Ember.View.extend
  tagName: 'img'
  attributeBindings: ['src', 'content']
  mouseEnter: (event) ->
    @.get('controller').set('previewing', @.get('content'))
