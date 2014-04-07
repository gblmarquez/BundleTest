require.config

    paths :
        backbone : 'lib/backbone/backbone'
        underscore : 'lib/underscore/underscore'
        jquery : 'lib/jquery/dist/jquery'
        marionette : 'lib/marionette/lib/core/amd/backbone.marionette'
        'backbone.wreqr' : 'lib/backbone.wreqr/lib/amd/backbone.wreqr'
        'backbone.babysitter' : 'lib/backbone.babysitter/lib/amd/backbone.babysitter'

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
