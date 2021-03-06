json.stories @stories do |story|
  json.extract! story, :title, :desc, :id
  json.point story.point.point_geojson
  json.place story.point.place
  json.media story.media do |media|
    json.url url_for(media)
    json.blob media.blob
  end
  json.speaker do |speaker|
    json.extract! story.speaker, :name, :picture_url
  end
end
json.logo_path image_path("logocombo.svg")
