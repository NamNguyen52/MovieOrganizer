class Usermovie
  include Mongoid::Document
  field :watch, type: Boolean
  field :onwatchlist, type: Boolean

  belongs_to :user 
  belongs_to :movie

end

