Template.PostNew.helpers()

Template.PostNew.events()

AutoForm.hooks
  "new-post-form":
    onSuccess: (operation, result, template) ->
      post = Post.findOne(result)
      Router.go "/streams/#{post.stream}"

Template.PostNew.rendered = ->
  Session.set 'stream_id',Router.current().params.query.stream_id
