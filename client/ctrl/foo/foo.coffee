Ctrl.define
  'foo':
    init: ->
    created: ->
    destroyed: -> console.log 'DESTROYED | Foo:', @
    model: ->
    api: {}
    helpers: {}
    events: {}




tmpl = Template['sample-tmpl']
tmpl.destroyed = -> console.log 'DESTROYED | sample-tmpl'


# tmpl.rendered = -> console.log 'RENDERED | sample-tmpl', @