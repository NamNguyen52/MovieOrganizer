class MoviesController < ApplicationController

  def new
  	@movie = Movie.new
  end

  def create
  	@movie = Movie.create(params.require(:movie).permit(:title, :director, :release_date))
  	if @movie.save
  		redirect_to :view_all
  	else
  		render 'new'
  	end
  end

end
