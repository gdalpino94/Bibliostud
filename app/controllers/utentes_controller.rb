class UtentesController < ApplicationController
	before_action :find_utente, only: [:show,:edit,:update,:destroy]
	def index
		@utentes = Utente.all.order("created_at DESC")
	end


	def new 
		@utente = Utente.new
	end

	def create
		@utente = Utente.new(utente_params)
		if @utente.save
      		redirect_to utente_path(@utente)
   	 	else
      		render 'new'
    	end
	end

	def show
		@utente = Utente.find(params[:id])
    	@annuncios = @utente.annuncios.paginate(page: params[:page])
	end

	def destroy
		@utente.destroy
		redirect_to utentes_path
	end
	
	private 

		def utente_params
			params.require(:utente).permit(:username,:nome,:cognome,:password,:email,:telefono,:password_confirmation)
		end
		def find_utente
			#Il campo id qua sotto in realtà è il campo username!
			@utente = Utente.find(params[:id])
		end
end

