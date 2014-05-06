define ['model/PessoaJuridica'], (PessoaJuridica) -> 
	
	class PessoasJuridicas extends Backbone.Collection
	
		model: PessoaJuridica
		url: 'http://cnb.azurewebsites.net/api/pessoajuridica'