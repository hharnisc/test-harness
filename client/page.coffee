Ctrl.define
  'foo':
    init: -> console.log '||| init', @uid, @children.length, @
    created: ->
      console.log '||| created',@uid, @children.length, @
      # Meteor.setTimeout (-> Session.set('showBar', false)), 1500
      # Meteor.setInterval (-> Session.set('counter', (Session.get('counter') ? 0) + 1)), 1000

    destroyed: -> console.log '||| destroyed', @uid, @

    helpers:
      title: -> "My Foo - #{ @uid }"
      showBar: -> Session.get('showBar') ? true

    events:
      'click .btn.foo': -> console.log '!!FOO click', @


  # --------------------------------------------------------------------------


  'bar':
    init: -> console.log '||| init', @uid, @children.length, @
    created: -> console.log '||| created',@uid, @children.length, @
    destroyed: -> console.log '||| destroyed', @uid, @

    helpers:
      title: ->
        # console.log 'BAR :: READ TITLE'
        "My Bar - #{ @uid }"

    events:
      'click .btn': (e) ->
        console.log '!! BAR click', @



  # --------------------------------------------------------------------------



  'baz':
    created: ->
      @autorun (c) =>
        # console.log 'Session.get("counter")', Session.get("counter")


    destroyed: ->
      console.log '||| destroyed', @uid, @type, @

    helpers:
      parentUId: -> @parent?.uid

