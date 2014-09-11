class Usermovie
  include Mongoid::Document
  field :watch, type: Boolean
  field :rating, type: Integer
  field :onwatchlist, type: Boolean

  belongs_to :user 
  belongs_to :movie

end

