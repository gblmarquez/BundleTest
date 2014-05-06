define [], ->

	class PessoaJuridica extends Backbone.Model
	
		urlRoot: 'cnb.azurewebsites.net/api/pessoajuridica'

	class PessoasJuridicas extends Backbone.Collection

		model: PessoaJuridica

    class App extends Marionette.ItemView

        el: '#content'

        render: ->
            @$el.html "hello world do Gabriel!"

	class PessoaJuridicaView extends Marionette.ItemView

        el: 'li'

        render: ->
            @$el.html "a"

    class PessoasJuridicasView extends Marionette.CollectionView

        itemView: PessoaJuridicaView
