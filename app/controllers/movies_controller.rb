class MoviesController < ApplicationController

	def index
		@movie = Movie.new
	end

	def show
		
			@movies = Movie.search_by_title_imdb(params[:title])
			#binding.pry
			#@mov = @movies.movies[0]	
	end

	def create
		@selected_film = Movie.search_by_id_imdb(params[:id])
		Movie.add_db(@selected_film, entry_params)

	end

	private
	def entry_params
		 #coge el hash de time entry y con permit le decimos lo que permitimos en la bbdd, los de rails los admite por defecto
		params.require(:movie).permit(:title, :poster, :year, :sinopsis)
	end
end
