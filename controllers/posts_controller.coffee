PostsController = ApplicationController.extend
  waitOn: -> [
    Meteor.subscribe("posts")
    Meteor.subscribe("streams")
  ]

  index: ->
    @render "PostIndex", data: Post.find()

  show: ->
    @render "PostShow", data: Post.findOne(@params._id)

  new: ->
    Session.set 'stream_id',Router.current().params.query.stream
    @render "PostNew"

  edit: ->
    @render "PostEdit", data: Post.findOne(@params._id)

  favo: ->
    if !localStorage[@params._id]
      Post.update({_id:@params._id},{$inc:{favo_count:1}})
      localStorage[@params._id] = 'voted'
    Router.go('/posts/')


(global ? window).PostsController = PostsController
