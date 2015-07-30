window.favo = (post_id)->
  if !localStorage[post_id] and Session.get 'star'
    Post.update({_id:post_id},{$inc:{favo_count:1}})
    localStorage[post_id] = 'voted'
    Session.set 'star',Session.get('star') - 1
