class WelcomeController < ApplicationController
	require 'json'

  def index
    @page=1
  	@apifile = open("http://api.themoviedb.org/3/discover/movie?api_key=b83e15027df50325aa48d0cdc5c9bf30&&page=#{@page}")
  	@movie = ''
  	@apifile.each do |x|
  		@movie << x 
  	end
  	@movie = JSON.parse(@movie)
  end

  def show
    @apifile = open("http://api.themoviedb.org/3/discover/movie?api_key=b83e15027df50325aa48d0cdc5c9bf30&&page=#{@page}")
    @movie = ''
    @apifile.each do |x|
      @movie << x 
    end
    @movie = JSON.parse(@movie)
    @movie = @movie["results"]
    num= params[:id].to_i
    @movie = @movie[num]
  end
end
