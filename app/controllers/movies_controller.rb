class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
  	@movie = Movie.new
  end

  def create
    @movie = Movie.create(params.require(:movie).permit(:title, :director, :release_date, :trailer))
    new_entry = Usermovie.new
    new_entry.user = current_user
    new_entry.movie = @movie
    new_entry.save
    if @movie.save
      redirect_to movies_path
    else
      render 'new'
    end
  end

end
