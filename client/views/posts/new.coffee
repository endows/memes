Template.PostNew.helpers()

Template.PostNew.events
  'click #favo':->
    console.log 'ok'

AutoForm.hooks
  "new-post-form":
    onSuccess: (operation, result, template) ->
      Router.go "posts"

Template.PostNew.rendered = ->
  Session.set 'stream_id',Router.current().params.query.stream_id
