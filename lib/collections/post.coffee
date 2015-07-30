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


      # if !localStorage[post_id] and Session.get 'star'
      #   Post.update({_id:post_id},{$inc:{favo_count:1}})
      #   localStorage[post_id] = 'voted'
      #   Session.set 'star',Session.get('star') - 1
      #

(global ? window).Post = Post
