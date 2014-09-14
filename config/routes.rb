Movieorganizer::Application.routes.draw do

  # manually add a new movie
  get '/current_user/new_movie' => 'movies#new', as: :add_movie
  post 'movies/' => 'movies#create'
  get 'movies/' => 'movies#index'

  #search with YouTube API to add new movie
  get '/current_user/search' => 'movies#search', as: :search_movie

  # This is more or less the bare min of the first screen of the app.
  # This shows the Login, and create new account.
  get '/home' => 'users#home'
  get 'users/index' => 'users#index'

  # New/Create pairs
  get 'users/new' => 'users#new', as: :new_user
  post 'users/' => 'users#create'

  # Wireframe of user login
  get '/log_in' => 'sessions#new', as: :log_in
  post '/log_in' => 'sessions#create'
  delete '/log_out' => 'sessions#destroy', as: :log_out
  get '/log_in/current_user' => 'sessions#show', as: :show_user

end
