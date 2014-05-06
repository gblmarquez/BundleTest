
require ['Config'], ->

    require ['Infra'], ->

        require ['App'], (App) ->
            app = new App
            app.start()
