class WelcomeController < ApplicationController
	require 'json'
	@@page = 1
  def index
  	@apifile = open("http://api.themoviedb.org/3/discover/movie?api_key=b83e15027df50325aa48d0cdc5c9bf30&&page=#{'page'}")
  	@movie = ''
  	@apifile.each do |x|
  		@movie << x 
  	end
  	@movie = JSON.parse(@movie)
  end
  def next_page
  	@@page+=1
  end
end
