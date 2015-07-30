StreamsController = ApplicationController.extend
  waitOn: -> [
    Meteor.subscribe("streams")
  ]

  index: ->
    @render "StreamIndex", data: Stream.find()

  show: ->
    @render "StreamShow", data: Stream.findOne(@params._id)

  new: ->
    @render "StreamNew"

  edit: ->
    @render "StreamEdit", data: Stream.findOne(@params._id)

(global ? window).StreamsController = StreamsController
