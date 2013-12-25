json.array!(@comics) do |comic|
  json.extract! comic, :id, :title, :description, :creator
  json.url comic_url(comic, format: :json)
end
