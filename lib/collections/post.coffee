Post = new Meteor.Collection "posts"

Post.attachSchema new SimpleSchema {
  body:
    type: String
  stream:
    type: String
  favo_count:
    type: Number
}

Post.allow
  insert: (userId, doc) ->
    true

  update: (userId, doc, fields, modifier) ->
    true

  remove: (userId, doc) ->
    true

if Meteor.isClient
  Post.before.insert (userId, doc)->
    doc.stream = Session.get 'stream_id'
    doc.favo_count = 0


(global ? window).Post = Post
