Template.PostIndex.helpers()

Template.PostIndex.events
  "click [data-action=delete]": ->
    Post.remove @_id

Template.PostIndex.rendered = ->
