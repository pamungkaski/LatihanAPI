class Movie < JSONable
	
	attr_accesor :poster_path, :overview, :original_title, :backdrop_path, :id, :genre_ids, :vote_average
	@@apifile = open('http://api.themoviedb.org/3/discover/movie?api_key=b83e15027df50325aa48d0cdc5c9bf30')
	def initialize(poster_path, overview, original_title, backdrop_path, id, genre_ids, vote_average)
		@poster_path = poster_path
		@overview = overview
		@original_title = original_title
		@backdrop_path = backdrop_path
		@id = id
		@genre_ids = genre_ids
		@vote_average = vote_average

	def parsing
		self.from_json! @@apifile
	end