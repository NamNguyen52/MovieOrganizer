module MoviesHelper

def embed(youtube_url)
  youtube_id = youtube_url.try(:split, '=').last
  content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
end

end