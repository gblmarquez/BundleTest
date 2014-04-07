require.config

    paths :
        backbone : 'lib/backbone/backbone'
        underscore : 'lib/underscore/underscore'
        jquery : 'lib/jquery/dist/jquery'
        marionette : 'lib/marionette/lib/backbone.marionette'

    shim :
        jquery :
            exports : 'jQuery'
        underscore :
            exports : '_'
        backbone :
            deps : ['jquery', 'underscore']
            exports : 'Backbone'
        marionette :
            deps : ['jquery', 'underscore', 'backbone']
            exports : 'Marionette'

require ['App'], ->
    debugger
