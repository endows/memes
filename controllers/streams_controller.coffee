StreamsController = ApplicationController.extend
  waitOn: -> [
    Meteor.subscribe("streams")
  ]

  index: ->
    @render "StreamIndex", data: Stream.find().fetch().reverse()

  show: ->
    data = {
      stream:Stream.findOne(@params._id)
      posts:Post.find({stream:@params._id}).fetch().reverse()
    }
    @render "StreamShow", data: data

  new: ->
    @render "StreamNew"

  edit: ->
    @render "StreamEdit", data: Stream.findOne(@params._id)

(global ? window).StreamsController = StreamsController
