Template.StreamEdit.helpers()

Template.StreamEdit.events()

Template.StreamEdit.rendered = ->

AutoForm.hooks
  "edit-stream-form":
    onSuccess: (operation, result, template) ->
      Router.go "streams"
