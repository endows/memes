Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  waitOn: -> [
    Meteor.subscribe("streams")
    Meteor.subscribe("posts")
  ]

Router.map ->
  @route "/", -> Router.go '/streams'
  @route "streams", controller: "StreamsController", action: "index", name: "streams"
  @route "streams/new", controller: "StreamsController", action: "new", name: "new_stream"
  @route "streams/:_id", controller: "StreamsController", action: "show", name: "stream"
  @route "streams/:_id/edit", controller: "StreamsController", action: "edit", name: "edit_stream"
  @route "posts", controller: "PostsController", action: "index", name: "posts"
  @route "posts/new", controller: "PostsController", action: "new", name: "new_post"
  @route "posts/:_id", controller: "PostsController", action: "show", name: "post"
  @route "posts/:_id/edit", controller: "PostsController", action: "edit", name: "edit_post"
  @route "posts/:_id/favo", controller: "PostsController", action: "favo", name: "favo_post"
