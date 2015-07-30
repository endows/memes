Post = new Meteor.Collection "posts"

Post.attachSchema new SimpleSchema {
  user:
    type: String
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

Post.before.insert (userId, doc)->
  doc.user = "Date.now();"
  doc.stream = "Router.current().params.query.stream"
  doc.favo_count = 0
  doc


(global ? window).Post = Post
