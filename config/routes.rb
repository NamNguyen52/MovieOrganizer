Movieorganizer::Application.routes.draw do

  # manually add a new movie
  get 'movies/:user_id/new' => 'movies#new', as: :add_movie
  post 'movies/' => 'movies#create'
  get 'moviesindex/' => 'movies#index'

  #search with YouTube API to add new movie
  get 'users/login/:user_id/search' => 'movies#search', as: :search_movie

  # This is more or less the bare min of the first screen of the app.
  # This shows the Login, and create new account.
  get 'users/' => 'users#home'
  get 'users/index' => 'users#index'

  # New/Create pairs
  get 'users/new' => 'users#new', as: :new_user
  post 'users/' => 'users#create'

  # Wireframe of user login
  get 'users/login' => 'users#login', as: :login
  get 'users/login/:user_id' => 'users#show', as: :show_user

end
