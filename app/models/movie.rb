class Movie
  include Mongoid::Document
  field :title, type: String
  field :director, type: String
  field :release_date, type: Integer
  field :trailer, type: String
  belongs_to :user
end
