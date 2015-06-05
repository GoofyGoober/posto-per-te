json.array!(@immagines) do |immagine|
  json.extract! immagine, :id, :url
  json.url immagine_url(immagine, format: :json)
end
