PostsController = ApplicationController.extend
  waitOn: -> [
    Meteor.subscribe("posts")
    Meteor.subscribe("streams")
  ]

  index: ->
    @render "PostIndex", data: Post.find().fetch().reverse()

  show: ->
    @render "PostShow", data: Post.findOne(@params._id)

  new: ->
    Session.set 'stream_id',Router.current().params.query.stream
    @render "PostNew"

  edit: ->
    @render "PostEdit", data: Post.findOne(@params._id)


(global ? window).PostsController = PostsController
