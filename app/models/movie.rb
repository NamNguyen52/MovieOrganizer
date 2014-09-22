require 'youtube_it'
require 'imdb'

class Movie
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  field :title, type: String
  field :director, type: String
  field :release_date, type: String
  field :trailer, type: String
  field :comment, type: String
  field :review, type: String

  has_many :usermovies
end

# attr_reader :release

# def release=(val)
#   self.release_date = Date.strptime(val, "%m/%d/%Y") if val.present?
# end