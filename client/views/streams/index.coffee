Template.StreamIndex.helpers()

Template.StreamIndex.events
  "click [data-action=delete]": ->
    Stream.remove @_id

Template.StreamIndex.rendered = ->
