class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
  	@movie = Movie.new
  end

  def search
    @movie = Movie.new
  end

  def do_search
    @movie = Movie.new
    search_terms =  params[:search][:terms] 
    client = YouTubeIt::Client.new(:dev_key => "AI39si7vE4lh5EcW-n_4g1r4D9sYeCJKMqV7AvKHfsaKkWIKR8ACKVY0qiCsV226DufNNpRP2jdxbBqPjeJ33GNM6_8rf50bOw")
    @results = client.videos_by(:query => search_terms + "trailer", :per_page => 5)
    render "search"
  end

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
    Usermovie.where(movie_id: params[:movie_id]).update(watch: true)
    redirect_to show_user_path
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
    new_entry.watch = false
    new_entry.save
    if @movie.save
      redirect_to show_user_path
    else
      render 'new'
    end
  end

end
