module MoviesHelper

def embed(youtube_url)
  youtube_split = youtube_url.split('=')
  youtube_id = youtube_split.last
  content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
end

end