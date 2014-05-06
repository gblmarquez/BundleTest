define ['model/PessoasJuridicas'], (PessoasJuridicas) ->

	class App extends Marionette.ItemView

        el: '#content'

        render: ->
            @$el.html "asdasd"

        initialize: ->
        	a = new PessoasJuridicas()
        	a.fetch()
        	console.log(JSON.stringify(a))

	

    
