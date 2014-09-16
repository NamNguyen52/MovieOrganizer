class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
  	@movie = Movie.new
  end

  # def search
  #   @search = 
  # end

  def edit
    @movie = Movie.find(params[:movie_id])
  end

  def update
    @movie = Movie.find(params[:movie_id])

    if @movie.update_attributes(params.require(:movie).permit(:title, :director, :release_date, :trailer))
      redirect_to show_user_path
    else
      render 'edit'
    end
  end

  def watched
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @movie.destroy
    Usermovie.where(movie_id: params[:movie_id]).destroy
    redirect_to show_user_path
  end

  def create
    @movie = Movie.create(params.require(:movie).permit(:title, :director, :release_date, :trailer))
    new_entry = Usermovie.new
    new_entry.user = current_user
    new_entry.movie = @movie
    new_entry.save
    if @movie.save
      redirect_to show_user_path
    else
      render 'new'
    end
  end

end
