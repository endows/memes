Stream = new Meteor.Collection "streams"

Stream.attachSchema new SimpleSchema {
  title:
    type: String
}

Stream.allow
  insert: (userId, doc) ->
    true

  update: (userId, doc, fields, modifier) ->
    true

  remove: (userId, doc) ->
    true

(global ? window).Stream = Stream
