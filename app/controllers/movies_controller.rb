class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
  	@movie = Movie.new
  end

  def create
    @movie = Movie.create(params.require(:movie).permit(:title, :director, :release_date))
    if @movie.save
      redirect_to moviesindex_path
    else
      render 'new'
    end
  end

  def merge
    
  end
end
