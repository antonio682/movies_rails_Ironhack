class Movie < ActiveRecord::Base
	
	def self.search_by_title_imdb(title)
		movies_search = Imdb::Search.new(title)
		movies_selected = []

		# movies.each_with_index do ｜movie, index｜
		# 	if !movie.poster.nil?
		# 		movies_selected << movie
		# 	end
		# end

		i = 0
		until movies_selected.size >= 10 do 
			 if !movies_search.movies[i].nil? && !movies_search.movies[i].poster.nil?
			 	 movies_selected << movies_search.movies[i]
			 end
			 			i += 1
		end
		movies_selected
		#binding.pry
	end

	def self.search_by_id_imdb(id)
		Imdb::Movie.new(id)
	end

	def add_db(movie, params)
		film = Movie.new
		film.sinopsis 
		movie.title
		movie.plot 
		movie.year 
		movie.poster
	end
end
