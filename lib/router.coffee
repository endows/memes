Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  waitOn: -> [
    Meteor.subscribe("streams")
  ]

Router.map ->
  @route "/", -> @render "index"
  @route "streams", controller: "StreamsController", action: "index", name: "streams"
  @route "streams/new", controller: "StreamsController", action: "new", name: "new_stream"
  @route "streams/:_id", controller: "StreamsController", action: "show", name: "stream"
  @route "streams/:_id/edit", controller: "StreamsController", action: "edit", name: "edit_stream"
