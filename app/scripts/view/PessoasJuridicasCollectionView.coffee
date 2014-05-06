define ['../model/PessoasJuridicas', 'view/PessoaJuridicaItemView'], (PessoasJuridicas, PessoaJuridicaItemView) ->  

	class PessoasJuridicasCollectionView extends Marionette.CollectionView

		collection: PessoasJuridicas
        itemView: PessoaJuridicaItemView