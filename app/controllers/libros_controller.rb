class LibrosController < ApplicationController
	before_action :find_libro, only: [:show,:edit,:update,:destroy]

	def index
		@libros = Libro.all.order("created_at DESC")
	end

	def show
	end

	def new 
		@libro = Libro.new
	end

	def create
		@libro = Libro.new(libro_params)

		if @libro.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @libro.update(libro_params)
			redirect_to libro_path(@libro)
		else
			render 'edit'
		end
	end

	def destroy
		@libro.destroy
		redirect_to root_path
	end

	private 

		def libro_params
			params.require(:libro).permit(:ISBN,:titolo,:autore)
		end
		def find_libro
			#Il campo id qua sotto in realtà è il campo ISBN!
			@libro = Libro.find(params[:id])
		end

end
