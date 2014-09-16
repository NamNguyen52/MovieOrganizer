# require 'rubygems'
# require 'google/api_client'
# require 'trollop'

class Movie
  include Mongoid::Document
  field :title, type: String
  field :director, type: String
  field :release_date, type: Date
  field :trailer, type: String
  field :comment, type: String
  field :search, type: String

  has_many :usermovies
end

# def youtube_search

# DEVELOPER_KEY = "AIzaSyBLCkee2mXNaiWFoK-bArwk00IezSrHiXo"
# YOUTUBE_API_SERVICE_NAME = "youtube"
# YOUTUBE_API_VERSION = "v3"

# opts = Trollop::options do
#   opt :q, 'self.search', :type => String, :default => 'Google'
#   opt :maxResults, 'Max results', :type => :int, :default => 5
# end

# client = Google::APIClient.new(:key => DEVELOPER_KEY,
#                                :authorization => nil)
# youtube = client.discovered_api(YOUTUBE_API_SERVICE_NAME, YOUTUBE_API_VERSION)

# opts[:part] = 'id,snippet'
# search_response = client.execute!(
#   :api_method => youtube.search.list,
#   :parameters => opts
# )

# videos = []

# case search_result.id.kind
#     when 'youtube#video'
#       videos.push("#{search_result.snippet.title} (#{search_result.id.videoId})")
# end
# end