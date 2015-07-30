Template.layout.helpers
  'haveStar':->
    arr = []
    i = 0
    while i < Session.get('star')
      arr[i] = i
      i++
    arr
  'emptyStar':->
    arr = []
    i = 0
    while i < 3 - Session.get('star')
      arr[i] = i
      i++
    arr
  'barLength':->
    Session.get('count') * 100 / Session.get('MAX_COUNT')


Template.layout.events()

Template.layout.rendered = ->
  Session.setDefault 'count',0
  Session.setDefault 'star',3
  Session.setDefault 'MAX_COUNT',10
  Session.setDefault 'MAX_STAR',3
  setInterval ->
    Session.set('count',Session.get('count') + 1) if Session.get('star') < 3
    if Session.get('count') is Session.get 'MAX_COUNT'
      Session.set('star',Session.get('star') + 1)
      Session.set 'count',0
  ,1000
