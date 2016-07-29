class LibrosController < ApplicationController
	def index
	end

	def new 
		@libro = Libro.new
	end

	def create
		@libro = Libro.new(libro_params)
	end

	private 

		def libro_params
			params.require(:libro).permit(:ISBN,:titolo,:autore)
		end
end
