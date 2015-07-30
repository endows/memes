Template.StreamNew.helpers()

Template.StreamNew.events()

AutoForm.hooks
  "new-stream-form":
    onSuccess: (operation, result, template) ->
      Router.go "streams"

Template.StreamNew.rendered = ->
