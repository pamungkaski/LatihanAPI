class WelcomeController < ApplicationController
	require 'json'
  def index
  	@apifile = open('http://api.themoviedb.org/3/discover/movie?api_key=b83e15027df50325aa48d0cdc5c9bf30')
  	@movie = ''
  	@apifile.each do |x|
  		@movie << x 
  	end
  	@movie = JSON.parse(@movie)
  end
end
