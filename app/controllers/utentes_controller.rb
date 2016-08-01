class UtentesController < ApplicationController
	def index
	end

	def new 
		@utente = Utente.new
	end

	def create
		@utente = Utente.new(utente_params)
	end

	private 

		def utente_params
			params.require(:utente).permit(:username,:nome,:cognome,:password,:email,:telefono)
		end
end

