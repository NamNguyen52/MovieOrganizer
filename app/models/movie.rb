class Movie
  include Mongoid::Document
  field :title, type: String
  field :director, type: String
  field :release_date, type: Date
  field :trailer, type: String
  
  # index({title: 1}, {database: 'movies'})

  has_many :usermovies
end
