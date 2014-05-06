define ['model/PessoasJuridicas', 'view/PessoasJuridicasCollectionView'], (PessoasJuridicas, PessoasJuridicasCollectionView) ->

	class App extends Backbone.Marionette.Application

        initialize: ->

        	console.log('initialize')

        	this.addRegions({
        		form: "#form"
        		list: "#list"
        	})

        	this.addInitializer(->
        		this.pessoasJuridicas = new PessoasJuridicas()

        		this.form.show(new PessoasJuridicasCollectionView({ collection: this.pessoasJuridicas }))
        	)
