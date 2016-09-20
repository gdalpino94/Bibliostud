class AnnunciosController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

  def index
    @annuncios = Annuncio.all
  end

	def new 
		@annuncio = Annuncio.new
	end

	def create
    @annuncio = current_utente.annuncios.build(annuncio_params)
    @annuncio[:visibilita]=3
    @annuncio[:utente_id]=current_utente.id
    if @annuncio.save!
      redirect_to annuncios_path
    else
      redirect_to new_annuncio
    end
  end

  def destroy
  end

  private

    def annuncio_params
      params.require(:annuncio).permit(:descrizione,:prezzo)
    end

end
