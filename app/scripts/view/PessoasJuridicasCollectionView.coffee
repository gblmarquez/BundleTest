define ['../model/PessoasJuridicas', 'view/PessoaJuridicaItemView'], (PessoasJuridicas, PessoaJuridicaItemView) ->  

	class PessoasJuridicasCollectionView extends Marionette.CollectionView

		collection: new PessoasJuridicas
        itemView: new PessoaJuridicaItemView