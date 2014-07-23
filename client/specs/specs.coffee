

it 'Spec', -> console.log 'does something'


describe 'A root suite', ->
  beforeEach -> @load("<h1>Hi Harrison and Colin: #{ new Date().format() }</h1>")

  it 'is cool', ->
    console.log 'do something cool'
  it 'has coffee involved', ->
  it 'has food', ->

  describe 'A child suite', ->



describe 'Empty', ->



# ----------------------------------------------------------------------



describe 'UI-Harness Ctrls', ->
  before -> console.log 'before | ROOT'
  beforeEach -> console.log '++ beforeEach'

  afterEach -> console.log '-- afterEach'
  after -> console.log 'after | ROOT'


  it 'Update State', ->
    @updateState()
    console.log '@el()[0]', @el()[0]

  it 'Clear', -> @clear()
  it 'Reset', -> @reset()

  # ----------------------------------------------------------------------



  describe 'sub-set', ->
    before (done) ->
      console.log 'before | CHILD'
      done()

    after (done) ->
      console.log 'after | CHILD'
      Util.delay 100, -> done()


  # ----------------------------------------------------------------------


  it 'Load Ctrl definition (size:fill)', ->
    @load(Ctrl.defs.foo, size:'fill', -> console.log 'callback')

  it 'Load Ctrl definition (size: 300, 200)', ->
    @load(Ctrl.defs.foo, size:'300,200', -> console.log 'callback')

  it 'Load Ctrl definition (size: 300, 200, Left/Middle)', ->
    @load(Ctrl.defs.foo, size:'300,200', align:'left,middle', -> console.log 'callback')

  it 'Load Ctrl definition (size: auto)', ->
    @load(Ctrl.defs.foo, -> console.log 'callback')

  it 'Load Template', ->
    @load(Template['sample-tmpl'], -> console.log 'callback')

  it 'Load HTML (String)', ->
    @load('<code>HTML</code>', width:123, -> console.log 'callback')


  it 'Load jQuery element', -> @load($('<code>jQuery Element</code>'), -> console.log 'callback')
  it 'Load DOM element', -> @load($('<code>DOM Element</code>')[0], -> console.log 'callback')


  it 'size: fill', -> @size('fill')
  it 'size: 300x400', -> @size('300,400')
  it 'size: auto', -> @size('auto')

  it 'align: top,left', -> @align('top,left')
  it 'align: center,middle', -> @align('center,middle')
  it 'align: bottom,right', -> @align('bottom,right')
  it 'margin: 10,20,30,40', -> @margin('10,20,30,40')
  it 'margin: none', -> @margin('none')




  describe 'sub-set', ->
    before -> console.log 'before | CHILD'

  it 'column-set', ->
    console.log 'RUN column-set', @



