require 'youtube_it'

class Movie
  include Mongoid::Document
  field :title, type: String
  field :director, type: String
  field :release_date, type: Date
  field :trailer, type: String
  field :comment, type: String

  has_many :usermovies
end

