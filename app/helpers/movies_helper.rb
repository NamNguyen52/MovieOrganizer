module MoviesHelper

def embed(youtube_url)
  youtube_split = youtube_url.split('=')
  youtube_id = youtube_split.last
  content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
end

# def youtube_search(search_terms)

# DEVELOPER_KEY = "AIzaSyBLCkee2mXNaiWFoK-bArwk00IezSrHiXo"
# YOUTUBE_API_SERVICE_NAME = "youtube"
# YOUTUBE_API_VERSION = "v3"

# 	opts = Trollop::options do
# 	  opt :q, search_terms, :type => String, :default => 'Google'
# 	  opt :maxResults, 'Max results', :type => :int, :default => 5
# 	end

# client = Google::APIClient.new(:key => DEVELOPER_KEY,
#                                :authorization => nil)
# youtube = client.discovered_api(YOUTUBE_API_SERVICE_NAME, YOUTUBE_API_VERSION)

# opts[:part] = 'id'
# search_response = client.execute!(
#   :api_method => youtube.search.list,
#   :parameters => opts
# )

# @videos = []

# 	case search_result.id.kind
# 	    when 'youtube#video'
# 	      videos.push("#{search_result.id.videoId}")
# 	end
# end

end